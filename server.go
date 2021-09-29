package main

import (
	"context"
	"net/http"
	"sipil_api/config"
	"sipil_api/controller"
	"sipil_api/middleware"
	"sipil_api/repository"
	"sipil_api/service"

	"github.com/gin-gonic/gin"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"

	"gorm.io/gorm"
)

var (
	db                       *gorm.DB                            = config.SetupDatabaseConnection()
	userRepository           repository.UserRepository           = repository.NewUserRepository(db)
	commonRepository         repository.CommonRepository         = repository.NewCommonRepository(db)
	ticketRepository         repository.TicketRepository         = repository.NewTicketRepository(db)
	ticketdetailRepository   repository.TicketDetailRepository   = repository.NewTicketDetailRepository(db)
	modulRepository          repository.ModulRepository          = repository.NewModulRepository(db)
	modulpermisionRepository repository.ModulPermisionRepository = repository.NewModulPermisionRepository(db)
	employeeRepository       repository.EmployeeRepository       = repository.NewEmployeeRepository(db)
	useremployeeRepository   repository.UserEmployeeRepository   = repository.NewUserEmployeeRepository(db)
	greigeRepository         repository.GreigeRepository         = repository.NewGreigeRepository(db)
	ticketmediaRepository    repository.TicketMediaRepository    = repository.NewTicketMediaRepository(db)
	jwtService               service.JWTService                  = service.NewJWTService()
	userService              service.UserService                 = service.NewUserService(userRepository)
	commonService            service.CommonService               = service.NewCommonService(commonRepository)
	ticketService            service.TicketService               = service.NewTicketService(ticketRepository)
	ticketdetailService      service.TicketDetailService         = service.NewTicketDetailService(ticketdetailRepository)
	modulService             service.ModulService                = service.NewModulService(modulRepository)
	modulpermisionService    service.ModulPermisionService       = service.NewModulPermisionService(modulpermisionRepository)
	employeeService          service.EmployeeService             = service.NewEmployeeService(employeeRepository)
	useremployeeService      service.UserEmployeeService         = service.NewUserEmployeeService(useremployeeRepository)
	greigeService            service.GreigeService               = service.NewGreigeService(greigeRepository)
	ticketmediaService       service.TicketMediaService          = service.NewTicketMediaService(ticketmediaRepository)
	authService              service.AuthService                 = service.NewAuthService(userRepository)
	authController           controller.AuthController           = controller.NewAuthController(authService, jwtService)
	userController           controller.UserController           = controller.NewUserController(userService, jwtService)
	commonController         controller.CommonController         = controller.NewCommonController(commonService, jwtService)
	ticketController         controller.TicketController         = controller.NewTicketController(ticketService, jwtService)
	greigeController         controller.GreigeController         = controller.NewGreigeController(greigeService, jwtService)
	ticketmediaController    controller.TicketMediaController    = controller.NewTicketMediaController(ticketmediaService, jwtService)
	ticketdetailController   controller.TicketDetailController   = controller.NewTicketDetailController(ticketdetailService, jwtService)
	modulController          controller.ModulController          = controller.NewModulController(modulService, jwtService)
	modulpermisionController controller.ModulPermisionController = controller.NewModulPermisionController(modulpermisionService, jwtService)
	employeeController       controller.EmployeeController       = controller.NewEmployeeController(employeeService, jwtService)
	useremployeeController   controller.UserEmployeeController   = controller.NewUserEmployeeController(useremployeeService, jwtService)
)

func handler(ctx context.Context, request events.APIGatewayProxyRequest) (*events.APIGatewayProxyResponse, error) {
	return &events.APIGatewayProxyResponse{
		StatusCode:        200,
		Headers:           map[string]string{"Content-Type": "text/plain"},
		MultiValueHeaders: http.Header{"Set-Cookie": {"Ding", "Ping"}},
		Body:              "Hello, World!",
		IsBase64Encoded:   false,
	}, nil
}

func main() {
	defer config.CloseDatabaseConnection(db)
	r := gin.Default()
	lambda.Start(handler)

	authRoutes := r.Group("api/auth")
	{
		authRoutes.POST("/login", authController.Login)
		authRoutes.POST("/register", authController.Register)
	}

	userRoutes := r.Group("api/user", middleware.AuthorizeJWT(jwtService))
	{
		userRoutes.GET("/profile", userController.Profile)
		userRoutes.PUT("/profile", userController.Update)
	}

	commonRoutes := r.Group("api/commons", middleware.AuthorizeJWT(jwtService))
	{
		commonRoutes.GET("/", commonController.All)
		commonRoutes.GET("/byType", commonController.ByType)
		commonRoutes.POST("/", commonController.Insert)
		commonRoutes.GET("/:id", commonController.FindByID)
		commonRoutes.PUT("/:id", commonController.Update)
		commonRoutes.DELETE("/:id", commonController.Delete)
		commonRoutes.GET("/byYarnSup", commonController.ByYarnSup)
		commonRoutes.GET("/byYarnType", commonController.ByYarnType)
		commonRoutes.GET("/byDiv", commonController.ByDiv)
	}

	ticketRoutes := r.Group("api/tickets", middleware.AuthorizeJWT(jwtService))
	{
		ticketRoutes.GET("/", ticketController.All)
		ticketRoutes.GET("/byType", ticketController.ByType)
		ticketRoutes.GET("/byStatus", ticketController.ByStatus)
		ticketRoutes.GET("/byConform", ticketController.ByConform)
		ticketRoutes.GET("/byDateType", ticketController.ByDateType)
		ticketRoutes.GET("/byDept", ticketController.ByDept)
		ticketRoutes.GET("/byDeptStatus", ticketController.ByDeptStatus)
		ticketRoutes.GET("/byTypeStatus", ticketController.ByTypeStatus)
		ticketRoutes.GET("/byDate", ticketController.ByDate)
		ticketRoutes.GET("/byTypeDate", ticketController.ByTypeDate)
		ticketRoutes.GET("/byDeptSend", ticketController.ByDeptSend)
		ticketRoutes.GET("/byTypeDateDept", ticketController.ByTypeDateDept)
		ticketRoutes.GET("/dashboardTypeCount", ticketController.DashboardTypeCount)
		ticketRoutes.GET("/byTypeDateUser", ticketController.ByTypeDateUser)
		ticketRoutes.POST("/uploadFile", ticketController.UploadFile)
		ticketRoutes.GET("/itemTicket", ticketController.ItemTicket)
		ticketRoutes.GET("/byAll", ticketController.ByAll)
		ticketRoutes.GET("/reportDept", ticketController.ReportDept)
		ticketRoutes.GET("/Count", ticketController.CountByStatus)
		ticketRoutes.POST("/", ticketController.Insert)
		ticketRoutes.GET("/:id", ticketController.FindByID)
		ticketRoutes.PUT("/:id", ticketController.Update)
		ticketRoutes.DELETE("/:id", ticketController.Delete)
	}

	ticketdetailRoutes := r.Group("api/ticketdetails", middleware.AuthorizeJWT(jwtService))
	{
		ticketdetailRoutes.GET("/", ticketdetailController.All)
		ticketdetailRoutes.POST("/", ticketdetailController.Insert)
		ticketdetailRoutes.GET("/:id", ticketdetailController.FindByID)
		ticketdetailRoutes.PUT("/:id", ticketdetailController.Update)
		ticketdetailRoutes.DELETE("/:id", ticketdetailController.Delete)
	}

	modulRoutes := r.Group("api/moduls", middleware.AuthorizeJWT(jwtService))
	{
		modulRoutes.GET("/", modulController.All)
		modulRoutes.POST("/", modulController.Insert)
		modulRoutes.GET("/:id", modulController.FindByID)
		modulRoutes.PUT("/:id", modulController.Update)
		modulRoutes.DELETE("/:id", modulController.Delete)
	}

	modulpermisionRoutes := r.Group("api/modulpermisions", middleware.AuthorizeJWT(jwtService))
	{
		modulpermisionRoutes.GET("/", modulpermisionController.All)
		modulpermisionRoutes.POST("/", modulpermisionController.Insert)
		modulpermisionRoutes.GET("/:id", modulpermisionController.FindByID)
		modulpermisionRoutes.PUT("/:id", modulpermisionController.Update)
		modulpermisionRoutes.DELETE("/:id", modulpermisionController.Delete)
	}

	employeeRoutes := r.Group("api/employes", middleware.AuthorizeJWT(jwtService))
	{
		employeeRoutes.GET("/", employeeController.All)
		employeeRoutes.POST("/", employeeController.Insert)
		employeeRoutes.GET("/:id", employeeController.FindByID)
		employeeRoutes.PUT("/:id", employeeController.Update)
		employeeRoutes.DELETE("/:id", employeeController.Delete)
	}

	useremployeeRoutes := r.Group("api/useremployes", middleware.AuthorizeJWT(jwtService))
	{
		useremployeeRoutes.GET("/", useremployeeController.All)
		useremployeeRoutes.POST("/", useremployeeController.Insert)
		useremployeeRoutes.GET("/:id", useremployeeController.FindByID)
		useremployeeRoutes.PUT("/:id", useremployeeController.Update)
		useremployeeRoutes.DELETE("/:id", useremployeeController.Delete)
	}

	greigeRoutes := r.Group("api/greiges", middleware.AuthorizeJWT(jwtService))
	{
		greigeRoutes.GET("/", greigeController.Greige)
		greigeRoutes.GET("/filterSo", greigeController.FilterSo)
	}

	ticketmediaRoutes := r.Group("api/ticketmedia", middleware.AuthorizeJWT(jwtService))
	{
		ticketmediaRoutes.GET("/", ticketmediaController.All)
		ticketmediaRoutes.POST("/", ticketmediaController.Insert)
		ticketmediaRoutes.GET("/:id", ticketmediaController.FindByID)
		ticketmediaRoutes.PUT("/:id", ticketmediaController.Update)
		ticketmediaRoutes.DELETE("/:id", ticketmediaController.Delete)
		ticketmediaRoutes.POST("/uploadFile", ticketmediaController.UploadFile)
		ticketmediaRoutes.GET("/ticketID", ticketmediaController.ByTicketID)
		ticketmediaRoutes.GET("/filterCAPA", ticketmediaController.FilterCAPA)
		ticketmediaRoutes.GET("/filterY", ticketmediaController.FilterY)
	}

	r.StaticFS("/upload", http.Dir("upload"))

	r.Run(":5000")
}
