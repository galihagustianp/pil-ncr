package controller

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"net/url"
	"strconv"
	"strings"

	"sipil_api/entity"
	"sipil_api/helper"
	"sipil_api/service"

	"github.com/dgrijalva/jwt-go"
	"github.com/gin-gonic/gin"
)

//GreigeController is a ...
type GreigeController interface {
	AllGreige(context *gin.Context)
	FindGreigeByID(context *gin.Context)
	Insert(context *gin.Context)
	Update(context *gin.Context)
	Delete(context *gin.Context)
	Greige(context *gin.Context)
	FilterSo(context *gin.Context)
}

type greigeController struct {
	greigeService service.GreigeService
	jwtService    service.JWTService
}

//NewGreigeController create a new instances of GreigeController
func NewGreigeController(greigeServ service.GreigeService, jwtServ service.JWTService) GreigeController {
	return &greigeController{
		greigeService: greigeServ,
		jwtService:    jwtServ,
	}
}

func (c *greigeController) AllGreige(context *gin.Context) {
	var greiges []entity.Greige = c.greigeService.AllGreige()
	res := helper.BuildResponse(true, "OK", greiges)
	context.JSON(http.StatusOK, res)
}

func (c *greigeController) FindGreigeByID(context *gin.Context) {
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}
	var greige entity.Greige = c.greigeService.FindGreigeByID(id)
	if (greige == entity.Greige{}) {
		res := helper.BuildErrorResponse("Data not found", "No data with given id", helper.EmptyObj{})
		context.JSON(http.StatusNotFound, res)
	} else {
		res := helper.BuildResponse(true, "OK", greige)
		context.JSON(http.StatusOK, res)
	}
}

func (c *greigeController) Insert(context *gin.Context) {
	var greigeCreateDTO entity.Greige
	errDTO := context.ShouldBind(&greigeCreateDTO)
	if errDTO != nil {
		res := helper.BuildErrorResponse("Failed to process request", errDTO.Error(), helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, res)
	} else {
		authHeader := context.GetHeader("Authorization")
		userID := c.getUserIDByToken(authHeader)
		convertedUserID, err := strconv.ParseUint(userID, 10, 64)
		if err == nil {
			greigeCreateDTO.Create_Id = convertedUserID
		}
		result := c.greigeService.Insert(greigeCreateDTO)
		response := helper.BuildResponse(true, "OK", result)
		context.JSON(http.StatusCreated, response)
	}
}

func (c *greigeController) Update(context *gin.Context) {
	var greigeUpdateDTO entity.Greige
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		res := helper.BuildErrorResponse("No param id was found", err.Error(), helper.EmptyObj{})
		context.AbortWithStatusJSON(http.StatusBadRequest, res)
		return
	}
	errDTO := context.ShouldBind(&greigeUpdateDTO)
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
	greigeUpdateDTO.GreigeID = id
	greigeUpdateDTO.Update_Id = idUser
	if errID != nil {
		response := helper.BuildErrorResponse("User Id Not Found", "User Id not found", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}

	result := c.greigeService.Update(greigeUpdateDTO)
	response := helper.BuildResponse(true, "OK", result)
	context.JSON(http.StatusOK, response)
}

func (c *greigeController) Delete(context *gin.Context) {
	var greige entity.Greige
	id, err := strconv.ParseUint(context.Param("id"), 0, 0)
	if err != nil {
		response := helper.BuildErrorResponse("Failed tou get id", "No param id were found", helper.EmptyObj{})
		context.JSON(http.StatusBadRequest, response)
	}
	greige.GreigeID = id
	authHeader := context.GetHeader("Authorization")
	token, errToken := c.jwtService.ValidateToken(authHeader)
	if errToken != nil {
		panic(errToken.Error())
	}
	claims := token.Claims.(jwt.MapClaims)
	userID := fmt.Sprintf("%v", claims["user_id"])
	if c.greigeService.IsAllowedToEdit(userID, greige.GreigeID) {
		c.greigeService.Delete(greige)
		res := helper.BuildResponse(true, "Deleted", helper.EmptyObj{})
		context.JSON(http.StatusOK, res)
	} else {
		response := helper.BuildErrorResponse("You dont have permission", "You are not the owner", helper.EmptyObj{})
		context.JSON(http.StatusForbidden, response)
	}
}

func (c *greigeController) getUserIDByToken(token string) string {
	aToken, err := c.jwtService.ValidateToken(token)
	if err != nil {
		panic(err.Error())
	}
	claims := aToken.Claims.(jwt.MapClaims)
	id := fmt.Sprintf("%v", claims["user_id"])
	return id
}

func (c *greigeController) FilterSo(context *gin.Context) {

	soRefNum := context.Query("soRef")
	soLineNum := context.Query("soLine")
	soNum := context.Query("soNum")

	// IP di Cikawung
	// resp, err := http.Get("http://192.168.5.15:8001/api/greige/?SO_REF_NUM=" + url.QueryEscape(soRefNum) + "&SO_LINE_NUM=" + url.QueryEscape(soLineNum) + "&SO_NUM=" + url.QueryEscape(soNum))
	// IP di Cikampek
	resp, err := http.Get("http://192.168.3.14:8003/api/greige/?SO_REF_NUM=" + url.QueryEscape(soRefNum) + "&SO_LINE_NUM=" + url.QueryEscape(soLineNum) + "&SO_NUM=" + url.QueryEscape(soNum))

	if err != nil {
		log.Fatalln(err)
	}

	defer resp.Body.Close()
	bodyBytes, _ := ioutil.ReadAll(resp.Body)
	bodyString := string(bodyBytes)

	if err := json.Unmarshal([]byte(bodyBytes), &bodyString); err != nil { // Parse []byte to the go struct pointer
		fmt.Println("Can not unmarshal JSON")
	}

	res := helper.BuildResponse(true, "OK", bodyString)
	context.JSON(http.StatusOK, res)

}

func (c *greigeController) Greige(context *gin.Context) {

	greigeID := context.Query("greigeID")

	// IP di Cikawung
	// resp, err := http.Get("http://192.168.5.15:8001/api/greige/?GREIGE_ID=" + greigeID)
	// IP di Cikampek
	resp, err := http.Get("http://192.168.3.14:8003/api/greige/?GREIGE_ID=" + greigeID)
	if err != nil {
		log.Fatalln(err)
	}

	defer resp.Body.Close()
	bodyBytes, _ := ioutil.ReadAll(resp.Body)
	bodyString := string(bodyBytes)

	textBytes := []byte(bodyString)

	if err := json.Unmarshal([]byte(bodyString), &textBytes); err != nil {
		fmt.Println(err)
	}

	// fmt.Println(bodyString)

	trim := strings.ReplaceAll(bodyString, "\\\\", " ")

	res := helper.BuildResponse(true, "OK", trim)
	context.JSON(http.StatusOK, res)

}
