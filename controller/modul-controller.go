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

//ModulController is a ...
type ModulController interface {
	All(context *gin.Context)
	FindByID(context *gin.Context)
	Insert(context *gin.Context)
	Update(context *gin.Context)
	Delete(context *gin.Context)
}

type modulController struct {
	modulService service.ModulService
	jwtService   service.JWTService
}

//NewModulController create a new instances of BoookController
func NewModulController(modulServ service.ModulService, jwtServ service.JWTService) ModulController {
	return &modulController{
		modulService: modulServ,
		jwtService:   jwtServ,
	}
}

func (c *modulController) All(context *gin.Context) {
	var moduls []entity.Modul = c.modulService.All()
	res := helper.BuildResponse(true, "OK", moduls)
	context.JSON(http.StatusOK, res)
}

func (c *modulController) FindByID(context *gin.Context) {
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}

	var modul entity.Modul = c.modulService.FindByID(id)
	if (modul == entity.Modul{}) {
		res := helper.BuildErrorResponse("Data not found", "No data with given id", helper.EmptyObj{})
		context.JSON(http.StatusNotFound, res)
	} else {
		res := helper.BuildResponse(true, "OK", modul)
		context.JSON(http.StatusOK, res)
	}
}

func (c *modulController) Insert(context *gin.Context) {
	var modulCreateDTO dto.ModulCreateDTO
	errDTO := context.ShouldBind(&modulCreateDTO)
	if errDTO != nil {
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
	} else {
		authHeader := context.GetHeader("Authorization")
		userID := c.getUserIDByToken(authHeader)
		convertedUserID, err := strconv.ParseUint(userID, 10, 64)
		if err == nil {
			modulCreateDTO.UserID = convertedUserID
		}
		result := c.modulService.Insert(modulCreateDTO)
		response := helper.BuildResponse(true, "OK", result)
		context.JSON(http.StatusCreated, response)
	}
}

func (c *modulController) Update(context *gin.Context) {
	var modulUpdateDTO entity.Modul
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}

	errDTO := context.ShouldBind(&modulUpdateDTO)
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
	modulUpdateDTO.ModulID = id
	modulUpdateDTO.UpdateUser = idUser
	if errID == nil {
		response := helper.BuildErrorResponse("User Id Not Found", "User Id not found", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
	result := c.modulService.Update(modulUpdateDTO)
	response := helper.BuildResponse(true, "OK", result)
	context.JSON(http.StatusOK, response)
}

func (c *modulController) Delete(context *gin.Context) {
	var modul entity.Modul
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		response := helper.BuildErrorResponse("Failed tou get id", "No param id were found", helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, response)
	}
	modul.ModulID = id
	authHeader := context.GetHeader("Authorization")
	token, errToken := c.jwtService.ValidateToken(authHeader)
	if errToken != nil {
		panic(errToken.Error())
	}
	claims := token.Claims.(jwt.MapClaims)
	userID := fmt.Sprintf("%v", claims["user_id"])
	if c.modulService.IsAllowedToEdit(userID, modul.ModulID) {
		c.modulService.Delete(modul)
		res := helper.BuildResponse(true, "Deleted", helper.EmptyObj{})
		context.JSON(http.StatusOK, res)
	} else {
		response := helper.BuildErrorResponse("You dont have permission", "You are not the owner", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
}

func (c *modulController) getUserIDByToken(token string) string {
	aToken, err := c.jwtService.ValidateToken(token)
	if err != nil {
		panic(err.Error())
	}
	claims := aToken.Claims.(jwt.MapClaims)
	id := fmt.Sprintf("%v", claims["user_id"])
	return id
}
