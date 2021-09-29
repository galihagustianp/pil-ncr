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

//TicketController is a ...
type TicketController interface {
	All(context *gin.Context)
	ByType(context *gin.Context)
	ByStatus(context *gin.Context)
	ByConform(context *gin.Context)
	ByDept(context *gin.Context)
	ByDeptStatus(context *gin.Context)
	ByTypeStatus(context *gin.Context)
	ByDateType(context *gin.Context)
	CountByStatus(context *gin.Context)
	ByTypeDate(context *gin.Context)
	ByDate(context *gin.Context)
	FindByID(context *gin.Context)
	Insert(context *gin.Context)
	Update(context *gin.Context)
	Delete(context *gin.Context)
	ByDeptSend(context *gin.Context)
	ByTypeDateDept(context *gin.Context)
	ByTypeDateUser(context *gin.Context)
	UploadFile(context *gin.Context)
	ByAll(context *gin.Context)
	ReportDept(context *gin.Context)
	DashboardTypeCount(context *gin.Context)
	ItemTicket(context *gin.Context)
}

type ticketController struct {
	ticketService service.TicketService
	jwtService    service.JWTService
}

//NewTicketController create a new instances of BoookController
func NewTicketController(ticketServ service.TicketService, jwtServ service.JWTService) TicketController {
	return &ticketController{
		ticketService: ticketServ,
		jwtService:    jwtServ,
	}
}

func (c *ticketController) All(context *gin.Context) {
	var tickets []entity.Combined = c.ticketService.All()
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByType(context *gin.Context) {
	sType := context.Query("type_ncr")
	var tickets []entity.Combined = c.ticketService.ByType(sType)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByStatus(context *gin.Context) {
	sStatus := context.Query("status")
	var tickets []entity.Combined = c.ticketService.ByStatus(sStatus)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByConform(context *gin.Context) {
	sConform := context.Query("confirm")
	var tickets []entity.Combined = c.ticketService.ByConform(sConform)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByTypeStatus(context *gin.Context) {
	sType := context.Query("type_ncr")
	sStatus := context.Query("status")
	sDate := context.Query("create_date")
	var tickets []entity.Combined = c.ticketService.ByTypeStatus(sType, sStatus, sDate)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByTypeDate(context *gin.Context) {
	sMonth := context.Query("month")
	sYear := context.Query(("year"))
	var tickets []entity.TypeDate = c.ticketService.ByTypeDate(sMonth, sYear)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByTypeDateDept(context *gin.Context) {
	sDept := context.Query("dept_name")
	sTypeDate := context.Query("month")
	sYear := context.Query("year")
	var tickets []entity.TypeDate = c.ticketService.ByTypeDateDept(sTypeDate, sYear, sDept)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByTypeDateUser(context *gin.Context) {
	sDept := context.Query("dept_name")
	sMonth := context.Query("month")
	var tickets []entity.TypeDateUser = c.ticketService.ByTypeDateUser(sDept, sMonth)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) DashboardTypeCount(context *gin.Context) {
	sDept := context.Query("dept_name")
	var tickets []entity.Count = c.ticketService.DashboardTypeCount(sDept)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByDeptSend(context *gin.Context) {
	sSend := context.Query("send_ncr")
	sStatus := context.Query("status")
	var tickets []entity.Combined = c.ticketService.ByDeptSend(sSend, sStatus)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}
func (c *ticketController) ByAll(context *gin.Context) {
	dateFrom := context.Query("dateFrom")
	dateTo := context.Query("dateTo")
	sType := context.Query("sType")
	all_type := context.Query("all_type")
	all_item := context.Query("all_item")
	itemGreige := context.Query("itemGreige")
	itemYarn := context.Query("itemYarn")
	itemFabric := context.Query("itemFabric")
	var tickets []entity.Combined = c.ticketService.ByAll(dateFrom, dateTo, sType, all_type, all_item, itemGreige, itemYarn, itemFabric)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ReportDept(context *gin.Context) {
	sDept := context.Query("sDept")
	dateFrom := context.Query("dateFrom")
	dateTo := context.Query("dateTo")
	sType := context.Query("sType")
	all_type := context.Query("all_type")
	all_item := context.Query("all_item")
	itemGreige := context.Query("itemGreige")
	itemYarn := context.Query("itemYarn")
	itemFabric := context.Query("itemFabric")
	var tickets []entity.Combined = c.ticketService.ReportDept(sDept, dateFrom, dateTo, sType, all_type, all_item, itemGreige, itemYarn, itemFabric)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByDateType(context *gin.Context) {
	sDate := context.Query("create_date")
	sType := context.Query("type_ncr")
	sItem := context.Query("item_ticket")
	var tickets []entity.Combined = c.ticketService.ByDateType(sDate, sType, sItem)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByDept(context *gin.Context) {
	sDept := context.Query("dept_name")
	var jointickets []entity.Combined = c.ticketService.ByDept(sDept)
	res := helper.BuildResponse(true, "OK", jointickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ItemTicket(context *gin.Context) {
	sItemTicket := context.Query("item_ticket")
	var tickets []entity.Combined = c.ticketService.ItemTicket(sItemTicket)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByDeptStatus(context *gin.Context) {
	sDept := context.Query("dept_name")
	sStatus := context.Query("status")
	var jointickets []entity.Combined = c.ticketService.ByDeptStatus(sDept, sStatus)
	res := helper.BuildResponse(true, "OK", jointickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) ByDate(context *gin.Context) {
	sFrom := context.Query("create_from")
	sTo := context.Query("create_to")
	var tickets []entity.Combined = c.ticketService.ByDate(sFrom, sTo)
	res := helper.BuildResponse(true, "OK", tickets)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) CountByStatus(context *gin.Context) {
	var counts []entity.Count = c.ticketService.CountByStatus()
	res := helper.BuildResponse(true, "OK", counts)
	context.JSON(http.StatusOK, res)
}

func (c *ticketController) FindByID(context *gin.Context) {
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}
	var ticket entity.Combined = c.ticketService.FindByID(id)
	if (ticket == entity.Combined{}) {
		res := helper.BuildErrorResponse("Data not found", "No data with given id", helper.EmptyObj{})
		context.JSON(http.StatusNotFound, res)
	} else {
		res := helper.BuildResponse(true, "OK", ticket)
		context.JSON(http.StatusOK, res)
	}
}

func (c *ticketController) Insert(context *gin.Context) {
	var ticketCreateDTO dto.TicketCreateDTO
	errDTO := context.ShouldBind(&ticketCreateDTO)

	if errDTO != nil {
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
	} else {
		authHeader := context.GetHeader("Authorization")
		userID := c.getUserIDByToken(authHeader)
		convertedUserID, err := strconv.ParseUint(userID, 10, 64)
		if err == nil {
			ticketCreateDTO.CreateUser = convertedUserID
			ticketCreateDTO.UpdateUser = convertedUserID
		}
		result := c.ticketService.Insert(ticketCreateDTO)
		response := helper.BuildResponse(true, "OK", result)
		context.JSON(http.StatusCreated, response)
	}
}

func (c *ticketController) Update(context *gin.Context) {
	var ticketUpdateDTO entity.Ticket
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No Param ID Was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}
	errDTO := context.ShouldBind(&ticketUpdateDTO)
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
	ticketUpdateDTO.TicketID = id
	ticketUpdateDTO.UpdateUser = idUser
	if errID != nil {
		response := helper.BuildErrorResponse("User ID Not Found", "User ID Not Found", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
	result := c.ticketService.Update(ticketUpdateDTO)
	response := helper.BuildResponse(true, "OK", result)
	context.JSON(http.StatusOK, response)
}

func (c *ticketController) Delete(context *gin.Context) {
	var ticket entity.Ticket
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		response := helper.BuildErrorResponse("Failed tou get id", "No param id were found", helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, response)
	}
	ticket.TicketID = id
	authHeader := context.GetHeader("Authorization")
	token, errToken := c.jwtService.ValidateToken(authHeader)
	if errToken != nil {
		panic(errToken.Error())
	}
	claims := token.Claims.(jwt.MapClaims)
	userID := fmt.Sprintf("%v", claims["user_id"])
	if c.ticketService.IsAllowedToEdit(userID, ticket.TicketID) {
		c.ticketService.Delete(ticket)
		res := helper.BuildResponse(true, "Deleted", helper.EmptyObj{})
		context.JSON(http.StatusOK, res)
	} else {
		response := helper.BuildErrorResponse("You dont have permission", "You are not the owner", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
}

func (c *ticketController) getUserIDByToken(token string) string {
	aToken, err := c.jwtService.ValidateToken(token)
	if err != nil {
		panic(err.Error())
	}
	claims := aToken.Claims.(jwt.MapClaims)
	id := fmt.Sprintf("%v", claims["user_id"])
	return id
}

func (c *ticketController) UploadFile(context *gin.Context) {

	form, err := context.MultipartForm()
	if err != nil {
		context.String(http.StatusBadRequest, fmt.Sprintf("Get GORM err: %s", err.Error()))
		fmt.Println(err)
		return
	}
	files := form.File["files"]

	for _, file := range files {
		path := "./upload/" + file.Filename
		if err := context.SaveUploadedFile(file, path); err != nil {
			context.String(http.StatusBadRequest, fmt.Sprintf("Upload File err: %s", err.Error()))
			return
		}
	}

	// Response
	context.String(http.StatusOK, fmt.Sprintf("File %d uploaded successfully", len(files)))
}
