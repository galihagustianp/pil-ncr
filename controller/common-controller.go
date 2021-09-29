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

//CommonController is a ...
type CommonController interface {
	All(context *gin.Context)
	ByType(context *gin.Context)
	FindByID(context *gin.Context)
	Insert(context *gin.Context)
	Update(context *gin.Context)
	Delete(context *gin.Context)
	ByYarnSup(context *gin.Context)
	ByYarnType(context *gin.Context)
	ByDiv(context *gin.Context)
}

type commonController struct {
	commonService service.CommonService
	jwtService    service.JWTService
}

//NewCommonController create a new instances of BoookController
func NewCommonController(commonServ service.CommonService, jwtServ service.JWTService) CommonController {
	return &commonController{
		commonService: commonServ,
		jwtService:    jwtServ,
	}
}

func (c *commonController) All(context *gin.Context) {
	var commons []entity.Common = c.commonService.All()
	res := helper.BuildResponse(true, "OK", commons)
	context.JSON(http.StatusOK, res)
}

func (c *commonController) ByType(context *gin.Context) {
	sType := context.Query("common_type")
	var commons []entity.Common = c.commonService.ByType(sType)
	res := helper.BuildResponse(true, "OK", commons)
	context.JSON(http.StatusOK, res)
}

func (c *commonController) ByYarnSup(context *gin.Context) {
	var commons []entity.Common = c.commonService.ByYarnSup()
	res := helper.BuildResponse(true, "OK", commons)
	context.JSON(http.StatusOK, res)
}

func (c *commonController) ByDiv(context *gin.Context) {
	var commons []entity.Common = c.commonService.ByDiv()
	res := helper.BuildResponse(true, "OK", commons)
	context.JSON(http.StatusOK, res)
}

func (c *commonController) ByYarnType(context *gin.Context) {
	var commons []entity.Common = c.commonService.ByYarnType()
	res := helper.BuildResponse(true, "OK", commons)
	context.JSON(http.StatusOK, res)
}

func (c *commonController) FindByID(context *gin.Context) {
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}

	var common entity.Common = c.commonService.FindByID(id)
	if (common == entity.Common{}) {
		res := helper.BuildErrorResponse("Data not found", "No data with given id", helper.EmptyObj{})
		context.JSON(http.StatusNotFound, res)
	} else {
		res := helper.BuildResponse(true, "OK", common)
		context.JSON(http.StatusOK, res)
	}
}

func (c *commonController) Insert(context *gin.Context) {
	var commonCreateDTO dto.CommonCreateDTO
	errDTO := context.ShouldBind(&commonCreateDTO)
	if errDTO != nil {
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
	} else {
		authHeader := context.GetHeader("Authorization")
		userID := c.getUserIDByToken(authHeader)
		convertedUserID, err := strconv.ParseUint(userID, 10, 64)
		if err == nil {
			commonCreateDTO.CreateUser = convertedUserID
		}
		result := c.commonService.Insert(commonCreateDTO)
		response := helper.BuildResponse(true, "OK", result)
		context.JSON(http.StatusCreated, response)
	}
}

func (c *commonController) Update(context *gin.Context) {
	var commonUpdateDTO entity.Common
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}

	errDTO := context.ShouldBind(&commonUpdateDTO)
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
	commonUpdateDTO.CommonID = id
	commonUpdateDTO.UpdateUser = idUser
	if errID != nil {
		response := helper.BuildErrorResponse("User Id Not Found", "User Id not found", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}

	result := c.commonService.Update(commonUpdateDTO)
	response := helper.BuildResponse(true, "OK", result)
	context.JSON(http.StatusOK, response)
}

func (c *commonController) Delete(context *gin.Context) {
	var common entity.Common
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		response := helper.BuildErrorResponse("Failed tou get id", "No param id were found", helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, response)
	}
	common.CommonID = id
	authHeader := context.GetHeader("Authorization")
	token, errToken := c.jwtService.ValidateToken(authHeader)
	if errToken != nil {
		panic(errToken.Error())
	}
	claims := token.Claims.(jwt.MapClaims)
	userID := fmt.Sprintf("%v", claims["user_id"])
	if c.commonService.IsAllowedToEdit(userID, common.CommonID) {
		c.commonService.Delete(common)
		res := helper.BuildResponse(true, "Deleted", helper.EmptyObj{})
		context.JSON(http.StatusOK, res)
	} else {
		response := helper.BuildErrorResponse("You dont have permission", "You are not the owner", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
}

func (c *commonController) getUserIDByToken(token string) string {
	aToken, err := c.jwtService.ValidateToken(token)
	if err != nil {
		panic(err.Error())
	}
	claims := aToken.Claims.(jwt.MapClaims)
	id := fmt.Sprintf("%v", claims["user_id"])
	return id
}
