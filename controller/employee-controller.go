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

//EmployeeController is a ...
type EmployeeController interface {
	All(context *gin.Context)
	FindByID(context *gin.Context)
	Insert(context *gin.Context)
	Update(context *gin.Context)
	Delete(context *gin.Context)
}

type employeeController struct {
	employeeService service.EmployeeService
	jwtService      service.JWTService
}

//NewEmployeeController create a new instances of BoookController
func NewEmployeeController(employeeServ service.EmployeeService, jwtServ service.JWTService) EmployeeController {
	return &employeeController{
		employeeService: employeeServ,
		jwtService:      jwtServ,
	}
}

func (c *employeeController) All(context *gin.Context) {
	var employees []entity.Employee = c.employeeService.All()
	res := helper.BuildResponse(true, "OK", employees)
	context.JSON(http.StatusOK, res)
}

func (c *employeeController) FindByID(context *gin.Context) {
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}

	var employee entity.Employee = c.employeeService.FindByID(id)
	if (employee == entity.Employee{}) {
		res := helper.BuildErrorResponse("Data not found", "No data with given id", helper.EmptyObj{})
		context.JSON(http.StatusNotFound, res)
	} else {
		res := helper.BuildResponse(true, "OK", employee)
		context.JSON(http.StatusOK, res)
	}
}

func (c *employeeController) Insert(context *gin.Context) {
	var employeeCreateDTO dto.EmployeeCreateDTO
	errDTO := context.ShouldBind(&employeeCreateDTO)
	if errDTO != nil {
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
	} else {
		authHeader := context.GetHeader("Authorization")
		userID := c.getUserIDByToken(authHeader)
		convertedUserID, err := strconv.ParseUint(userID, 10, 64)
		if err == nil {

			employeeCreateDTO.CreateUser = convertedUserID
		}
		result := c.employeeService.Insert(employeeCreateDTO)
		response := helper.BuildResponse(true, "OK", result)
		context.JSON(http.StatusCreated, response)
	}
}

func (c *employeeController) Update(context *gin.Context) {
	var employeeUpdateDTO entity.Employee
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}
	errDTO := context.ShouldBind(&employeeUpdateDTO)
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
	employeeUpdateDTO.EmployeeID = id
	employeeUpdateDTO.UpdateUser = idUser
	if errID == nil {
		response := helper.BuildErrorResponse("User Id Not Found", "User Id not found", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
	result := c.employeeService.Update(employeeUpdateDTO)
	response := helper.BuildResponse(true, "OK", result)
	context.JSON(http.StatusOK, response)
}

func (c *employeeController) Delete(context *gin.Context) {
	var employee entity.Employee
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		response := helper.BuildErrorResponse("Failed tou get id", "No param id were found", helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, response)
	}
	employee.EmployeeID = id
	authHeader := context.GetHeader("Authorization")
	token, errToken := c.jwtService.ValidateToken(authHeader)
	if errToken != nil {
		panic(errToken.Error())
	}
	claims := token.Claims.(jwt.MapClaims)
	userID := fmt.Sprintf("%v", claims["user_id"])
	if c.employeeService.IsAllowedToEdit(userID, employee.EmployeeID) {
		c.employeeService.Delete(employee)
		res := helper.BuildResponse(true, "Deleted", helper.EmptyObj{})
		context.JSON(http.StatusOK, res)
	} else {
		response := helper.BuildErrorResponse("You dont have permission", "You are not the owner", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
}

func (c *employeeController) getUserIDByToken(token string) string {
	aToken, err := c.jwtService.ValidateToken(token)
	if err != nil {
		panic(err.Error())
	}
	claims := aToken.Claims.(jwt.MapClaims)
	id := fmt.Sprintf("%v", claims["user_id"])
	return id
}
