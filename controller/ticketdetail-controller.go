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

//TicketDetailController is a ...
type TicketDetailController interface {
	All(context *gin.Context)
	FindByID(context *gin.Context)
	Insert(context *gin.Context)
	Update(context *gin.Context)
	Delete(context *gin.Context)
}

type ticketdetailController struct {
	ticketdetailService service.TicketDetailService
	jwtService          service.JWTService
}

//NewTicketDetailController create a new instances of BoookController
func NewTicketDetailController(ticketdetailServ service.TicketDetailService, jwtServ service.JWTService) TicketDetailController {
	return &ticketdetailController{
		ticketdetailService: ticketdetailServ,
		jwtService:          jwtServ,
	}
}

func (c *ticketdetailController) All(context *gin.Context) {
	var ticketdetails []entity.TicketDetail = c.ticketdetailService.All()
	res := helper.BuildResponse(true, "OK", ticketdetails)
	context.JSON(http.StatusOK, res)
}

func (c *ticketdetailController) FindByID(context *gin.Context) {
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}

	var ticketdetail entity.TicketDetail = c.ticketdetailService.FindByID(id)
	if (ticketdetail == entity.TicketDetail{}) {
		res := helper.BuildErrorResponse("Data not found", "No data with given id", helper.EmptyObj{})
		context.JSON(http.StatusNotFound, res)
	} else {
		res := helper.BuildResponse(true, "OK", ticketdetail)
		context.JSON(http.StatusOK, res)
	}
}

func (c *ticketdetailController) Insert(context *gin.Context) {
	var ticketdetailCreateDTO dto.TicketDetailCreateDTO
	errDTO := context.ShouldBind(&ticketdetailCreateDTO)
	if errDTO != nil {
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
	} else {
		authHeader := context.GetHeader("Authorization")
		userID := c.getUserIDByToken(authHeader)
		convertedUserID, err := strconv.ParseUint(userID, 10, 64)
		if err == nil {
			ticketdetailCreateDTO.CreateUser = convertedUserID
		}
		result := c.ticketdetailService.Insert(ticketdetailCreateDTO)
		response := helper.BuildResponse(true, "OK", result)
		context.JSON(http.StatusCreated, response)
	}
}

func (c *ticketdetailController) Update(context *gin.Context) {
	var ticketdetailUpdateDTO entity.TicketDetail
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}
	errDTO := context.ShouldBind(&ticketdetailUpdateDTO)
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
	ticketdetailUpdateDTO.TicketDetailID = id
	ticketdetailUpdateDTO.UpdateUser = idUser
	if errID == nil {
		response := helper.BuildErrorResponse("User Id Not Found", "User Id not found", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
	result := c.ticketdetailService.Update(ticketdetailUpdateDTO)
	response := helper.BuildResponse(true, "OK", result)
	context.JSON(http.StatusOK, response)
}

func (c *ticketdetailController) Delete(context *gin.Context) {
	var ticketdetail entity.TicketDetail
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		response := helper.BuildErrorResponse("Failed tou get id", "No param id were found", helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, response)
	}
	ticketdetail.TicketDetailID = id
	authHeader := context.GetHeader("Authorization")
	token, errToken := c.jwtService.ValidateToken(authHeader)
	if errToken != nil {
		panic(errToken.Error())
	}
	claims := token.Claims.(jwt.MapClaims)
	userID := fmt.Sprintf("%v", claims["user_id"])
	if c.ticketdetailService.IsAllowedToEdit(userID, ticketdetail.TicketDetailID) {
		c.ticketdetailService.Delete(ticketdetail)
		res := helper.BuildResponse(true, "Deleted", helper.EmptyObj{})
		context.JSON(http.StatusOK, res)
	} else {
		response := helper.BuildErrorResponse("You dont have permission", "You are not the owner", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
}

func (c *ticketdetailController) getUserIDByToken(token string) string {
	aToken, err := c.jwtService.ValidateToken(token)
	if err != nil {
		panic(err.Error())
	}
	claims := aToken.Claims.(jwt.MapClaims)
	id := fmt.Sprintf("%v", claims["user_id"])
	return id
}
