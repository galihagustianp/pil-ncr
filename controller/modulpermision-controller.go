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

//ModulPermisionController is a ...
type ModulPermisionController interface {
	All(context *gin.Context)
	FindByID(context *gin.Context)
	Insert(context *gin.Context)
	Update(context *gin.Context)
	Delete(context *gin.Context)
}

type modulpermisionController struct {
	modulpermisionService service.ModulPermisionService
	jwtService            service.JWTService
}

//NewModulPermisionController create a new instances of BoookController
func NewModulPermisionController(modulpermisionServ service.ModulPermisionService, jwtServ service.JWTService) ModulPermisionController {
	return &modulpermisionController{
		modulpermisionService: modulpermisionServ,
		jwtService:            jwtServ,
	}
}

func (c *modulpermisionController) All(context *gin.Context) {
	var modulpermisions []entity.ModulPermision = c.modulpermisionService.All()
	res := helper.BuildResponse(true, "OK", modulpermisions)
	context.JSON(http.StatusOK, res)
}

func (c *modulpermisionController) FindByID(context *gin.Context) {
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}

	var modulpermision entity.ModulPermision = c.modulpermisionService.FindByID(id)
	if (modulpermision == entity.ModulPermision{}) {
		res := helper.BuildErrorResponse("Data not found", "No data with given id", helper.EmptyObj{})
		context.JSON(http.StatusNotFound, res)
	} else {
		res := helper.BuildResponse(true, "OK", modulpermision)
		context.JSON(http.StatusOK, res)
	}
}

func (c *modulpermisionController) Insert(context *gin.Context) {
	var modulpermisionCreateDTO dto.ModulPermisionCreateDTO
	errDTO := context.ShouldBind(&modulpermisionCreateDTO)
	if errDTO != nil {
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
	} else {
		authHeader := context.GetHeader("Authorization")
		userID := c.getUserIDByToken(authHeader)
		convertedUserID, err := strconv.ParseUint(userID, 10, 64)
		if err == nil {
			modulpermisionCreateDTO.CreateUser = convertedUserID
		}
		result := c.modulpermisionService.Insert(modulpermisionCreateDTO)
		response := helper.BuildResponse(true, "OK", result)
		context.JSON(http.StatusCreated, response)
	}
}

func (c *modulpermisionController) Update(context *gin.Context) {
	var modulpermisionUpdateDTO entity.ModulPermision
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}

	errDTO := context.ShouldBind(&modulpermisionUpdateDTO)
	if errDTO != nil {
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
		return
	}

	authHeader := context.GetHeader("Authorization")
	token, errToken := c.jwtService.ValidateToken(authHeader)
	if errToken != nil {
		panic(errToken.Error())
	}
	claims := token.Claims.(jwt.MapClaims)
	userID := fmt.Sprintf("%v", claims["user_id"])
	idUser, errID := strconv.ParseUint(userID, 10, 64)
	modulpermisionUpdateDTO.ModulPermisionID = id
	modulpermisionUpdateDTO.UpdateUser = idUser
	if errID == nil {
		response := helper.BuildErrorResponse("User Id Not Found", "User Id not found", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
	result := c.modulpermisionService.Update(modulpermisionUpdateDTO)
	response := helper.BuildResponse(true, "OK", result)
	context.JSON(http.StatusOK, response)
}

func (c *modulpermisionController) Delete(context *gin.Context) {
	var modulpermision entity.ModulPermision
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		response := helper.BuildErrorResponse("Failed tou get id", "No param id were found", helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, response)
	}
	modulpermision.ModulPermisionID = id
	authHeader := context.GetHeader("Authorization")
	token, errToken := c.jwtService.ValidateToken(authHeader)
	if errToken != nil {
		panic(errToken.Error())
	}
	claims := token.Claims.(jwt.MapClaims)
	userID := fmt.Sprintf("%v", claims["user_id"])
	if c.modulpermisionService.IsAllowedToEdit(userID, modulpermision.ModulPermisionID) {
		c.modulpermisionService.Delete(modulpermision)
		res := helper.BuildResponse(true, "Deleted", helper.EmptyObj{})
		context.JSON(http.StatusOK, res)
	} else {
		response := helper.BuildErrorResponse("You dont have permission", "You are not the owner", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
}

func (c *modulpermisionController) getUserIDByToken(token string) string {
	aToken, err := c.jwtService.ValidateToken(token)
	if err != nil {
		panic(err.Error())
	}
	claims := aToken.Claims.(jwt.MapClaims)
	id := fmt.Sprintf("%v", claims["user_id"])
	return id
}
