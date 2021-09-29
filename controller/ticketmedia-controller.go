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

//TicketMediaController is a ...
type TicketMediaController interface {
	All(context *gin.Context)
	FindByID(context *gin.Context)
	Insert(context *gin.Context)
	Update(context *gin.Context)
	Delete(context *gin.Context)
	UploadFile(context *gin.Context)
	ByTicketID(context *gin.Context)
	FilterCAPA(context *gin.Context)
	FilterY(context *gin.Context)
}

type ticketmediaController struct {
	ticketmediaService service.TicketMediaService
	jwtService         service.JWTService
}

//NewTicketMediaController create a new instances of BoookController
func NewTicketMediaController(ticketmediaServ service.TicketMediaService, jwtServ service.JWTService) TicketMediaController {
	return &ticketmediaController{
		ticketmediaService: ticketmediaServ,
		jwtService:         jwtServ,
	}
}

func (c *ticketmediaController) All(context *gin.Context) {
	var ticketmedias []entity.TicketMediaDetail = c.ticketmediaService.All()
	res := helper.BuildResponse(true, "OK", ticketmedias)
	context.JSON(http.StatusOK, res)
}

func (c *ticketmediaController) FindByID(context *gin.Context) {
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}

	var ticketmedia entity.TicketMediaDetail = c.ticketmediaService.FindByID(id)
	if (ticketmedia == entity.TicketMediaDetail{}) {
		res := helper.BuildErrorResponse("Data not found", "No data with given id", helper.EmptyObj{})
		context.JSON(http.StatusNotFound, res)
	} else {
		res := helper.BuildResponse(true, "OK", ticketmedia)
		context.JSON(http.StatusOK, res)
	}
}

func (c *ticketmediaController) Insert(context *gin.Context) {
	var ticketmediaCreateDTO dto.TicketMediaCreateDTO
	errDTO := context.ShouldBind(&ticketmediaCreateDTO)
	if errDTO != nil {
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
	} else {
		authHeader := context.GetHeader("Authorization")
		userID := c.getUserIDByToken(authHeader)
		convertedUserID, err := strconv.ParseUint(userID, 10, 64)
		if err == nil {
			ticketmediaCreateDTO.Create_User = convertedUserID
		}
		result := c.ticketmediaService.Insert(ticketmediaCreateDTO)
		response := helper.BuildResponse(true, "OK", result)
		context.JSON(http.StatusCreated, response)
	}
}

func (c *ticketmediaController) UploadFile(context *gin.Context) {
	form, err := context.MultipartForm()
	if err != nil {
		context.String(http.StatusBadRequest, fmt.Sprintf("Get GORM err: %s", err.Error()))
		fmt.Println(err)
		return
	}

	files := form.File["files"]

	for _, file := range files {
		path := "./ticketmedia/" + file.Filename
		if err := context.SaveUploadedFile(file, path); err != nil {
			context.String(http.StatusBadRequest, fmt.Sprintf("upload file err: %s", err.Error()))
			return
		}
	}

	// Response
	context.String(http.StatusOK, fmt.Sprintf("File %d uploaded successfully", len(files)))
}

func (c *ticketmediaController) Update(context *gin.Context) {
	var ticketmediaUpdateDTO entity.TicketMedia
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}
	errDTO := context.ShouldBind(&ticketmediaUpdateDTO)
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
	ticketmediaUpdateDTO.Media_Id = id
	ticketmediaUpdateDTO.Update_User = idUser
	if errID == nil {
		response := helper.BuildErrorResponse("User Id Not Found", "User Id not found", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
	result := c.ticketmediaService.Update(ticketmediaUpdateDTO)
	response := helper.BuildResponse(true, "OK", result)
	context.JSON(http.StatusOK, response)
}

func (c *ticketmediaController) Delete(context *gin.Context) {
	var ticketmedia entity.TicketMedia
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		response := helper.BuildErrorResponse("Failed tou get id", "No param id were found", helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, response)
	}
	ticketmedia.Media_Id = id
	authHeader := context.GetHeader("Authorization")
	token, errToken := c.jwtService.ValidateToken(authHeader)
	if errToken != nil {
		panic(errToken.Error())
	}
	claims := token.Claims.(jwt.MapClaims)
	userID := fmt.Sprintf("%v", claims["user_id"])
	if c.ticketmediaService.IsAllowedToEdit(userID, ticketmedia.Media_Id) {
		c.ticketmediaService.Delete(ticketmedia)
		res := helper.BuildResponse(true, "Deleted", helper.EmptyObj{})
		context.JSON(http.StatusOK, res)
	} else {
		response := helper.BuildErrorResponse("You dont have permission", "You are not the owner", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
}

func (c *ticketmediaController) getUserIDByToken(token string) string {
	aToken, err := c.jwtService.ValidateToken(token)
	if err != nil {
		panic(err.Error())
	}
	claims := aToken.Claims.(jwt.MapClaims)
	id := fmt.Sprintf("%v", claims["user_id"])
	return id
}

func (c *ticketmediaController) ByTicketID(context *gin.Context) {
	ticketID := context.Query("ticket_id")
	// ticketID, _ := strconv.ParseUint(context.Param("ticket_id"), 0, 0)
	var ticketmedias []entity.TicketMediaDetail = c.ticketmediaService.ByTicketID(ticketID)
	res := helper.BuildResponse(true, "OK", ticketmedias)
	context.JSON(http.StatusOK, res)
}

func (c *ticketmediaController) FilterCAPA(context *gin.Context) {
	ticketID := context.Query("ticket_id")
	var ticketmedias []entity.TicketMediaDetail = c.ticketmediaService.FilterCAPA(ticketID)
	res := helper.BuildResponse(true, "OK", ticketmedias)
	context.JSON(http.StatusOK, res)
}

func (c *ticketmediaController) FilterY(context *gin.Context) {
	var ticketmedias []entity.TicketMediaDetail = c.ticketmediaService.FilterY()
	res := helper.BuildResponse(true, "OK", ticketmedias)
	context.JSON(http.StatusOK, res)
}
