package controller

import (
	"fmt"
	"net/http"
	"strconv"

	"sipil_api/dto"
	"sipil_api/entity"
	"sipil_api/helper"
	"sipil_api/service"

	"github.com/dgrijalva/jwt-go"
	"github.com/gin-gonic/gin"
)

//UserEmployeeController is a ...
type UserEmployeeController interface {
	All(context *gin.Context)
	FindByID(context *gin.Context)
	Insert(context *gin.Context)
	Update(context *gin.Context)
	Delete(context *gin.Context)
}

type useremployeeController struct {
	useremployeeService service.UserEmployeeService
	jwtService          service.JWTService
}

//NewUserEmployeeController create a new instances of BoookController
func NewUserEmployeeController(useremployeeServ service.UserEmployeeService, jwtServ service.JWTService) UserEmployeeController {
	return &useremployeeController{
		useremployeeService: useremployeeServ,
		jwtService:          jwtServ,
	}
}

func (c *useremployeeController) All(context *gin.Context) {
	var useremployees []entity.UserEmployee = c.useremployeeService.All()
	res := helper.BuildResponse(true, "OK", useremployees)
	context.JSON(http.StatusOK, res)
}

func (c *useremployeeController) FindByID(context *gin.Context) {
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}

	var useremployee entity.UserEmployee = c.useremployeeService.FindByID(id)
	if (useremployee == entity.UserEmployee{}) {
		res := helper.BuildErrorResponse("Data not found", "No data with given id", helper.EmptyObj{})
		context.JSON(http.StatusNotFound, res)
	} else {
		res := helper.BuildResponse(true, "OK", useremployee)
		context.JSON(http.StatusOK, res)
	}
}

func (c *useremployeeController) Insert(context *gin.Context) {
	// log.Printf("Test4")
	var useremployeeCreateDTO dto.UserEmployeeCreateDTO
	errDTO := context.ShouldBind(&useremployeeCreateDTO)
	if errDTO != nil {
		// log.Printf("Test1")
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
	} else {
		// log.Printf("Test2")
		authHeader := context.GetHeader("Authorization")
		userID := c.getUserIDByToken(authHeader)
		convertedUserID, err := strconv.ParseUint(userID, 10, 64)
		if err == nil {
			// log.Printf("Test3")
			useremployeeCreateDTO.CreateUser = convertedUserID
		}
		// log.Printf("Test5")
		result := c.useremployeeService.Insert(useremployeeCreateDTO)
		response := helper.BuildResponse(true, "OK", result)
		context.JSON(http.StatusCreated, response)
	}
}

func (c *useremployeeController) Update(context *gin.Context) {
	var userEmployeeUpdateDTO entity.UserEmployee
	// id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	// if err != nil {
	// 	res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
	// 	context.AbortWithStatusJSON(http.StatusBadRequest, res)
	// 	return
	// }

	errDTO := context.ShouldBind(&userEmployeeUpdateDTO)
	if errDTO != nil {
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
		return
	}

	// authHeader := context.GetHeader("Authorization")
	// token, errToken := c.jwtService.ValidateToken(authHeader)
	// if errToken != nil {
	// 	panic(errToken.Error())
	// }
	// claims := token.Claims.(jwt.MapClaims)
	// userID := fmt.Sprintf("%v", claims["user_id"])
	// idUser, errID := strconv.ParseUint(userID, 10, 64)
	// userEmployeeUpdateDTO.UserEmployeeID = id
	// userEmployeeUpdateDTO.UpdateUser = idUser
	// if errID == nil {
	// 	response := helper.BuildErrorResponse("User Id Not Found", "User Id not found", helper.EmptyObj{})
	// 	context.JSON(http.StatusForbidden, response)
	// }

	result := c.useremployeeService.Update(userEmployeeUpdateDTO)
	response := helper.BuildResponse(true, "OK", result)
	context.JSON(http.StatusOK, response)
}

func (c *useremployeeController) Delete(context *gin.Context) {
	var useremployee entity.UserEmployee
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		response := helper.BuildErrorResponse("Failed tou get id", "No param id were found", helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, response)
	}
	useremployee.UserEmployeeID = id
	authHeader := context.GetHeader("Authorization")
	token, errToken := c.jwtService.ValidateToken(authHeader)
	if errToken != nil {
		panic(errToken.Error())
	}
	claims := token.Claims.(jwt.MapClaims)
	userID := fmt.Sprintf("%v", claims["user_id"])
	if c.useremployeeService.IsAllowedToEdit(userID, useremployee.UserEmployeeID) {
		c.useremployeeService.Delete(useremployee)
		res := helper.BuildResponse(true, "Deleted", helper.EmptyObj{})
		context.JSON(http.StatusOK, res)
	} else {
		response := helper.BuildErrorResponse("You dont have permission", "You are not the owner", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
}

func (c *useremployeeController) getUserIDByToken(token string) string {
	aToken, err := c.jwtService.ValidateToken(token)
	if err != nil {
		panic(err.Error())
	}
	claims := aToken.Claims.(jwt.MapClaims)
	id := fmt.Sprintf("%v", claims["user_id"])
	return id
}
