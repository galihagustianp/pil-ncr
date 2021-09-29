package service

import (
	"fmt"
	"log"

	"sipil_api/dto"
	"sipil_api/entity"
	"sipil_api/repository"

	"github.com/mashingan/smapping"
)

//UserEmployeeService is a ....
type UserEmployeeService interface {
	Insert(b dto.UserEmployeeCreateDTO) entity.UserEmployee
	Update(b entity.UserEmployee) entity.UserEmployee
	Delete(b entity.UserEmployee)
	All() []entity.UserEmployee
	FindByID(useremployeeID uint64) entity.UserEmployee
	IsAllowedToEdit(userID string, useremployeeID uint64) bool
}

type useremployeeService struct {
	useremployeeRepository repository.UserEmployeeRepository
}

//NewUserEmployeeService .....
func NewUserEmployeeService(useremployeeRepo repository.UserEmployeeRepository) UserEmployeeService {
	return &useremployeeService{
		useremployeeRepository: useremployeeRepo,
	}
}

func (service *useremployeeService) Insert(b dto.UserEmployeeCreateDTO) entity.UserEmployee {
	// log.Printf("Test8")
	useremployee := entity.UserEmployee{}
	err := smapping.FillStruct(&useremployee, smapping.MapFields(&b))
	if err != nil {
		// log.Printf("Test9")
		log.Fatalf("Failed map %v: ", err)
	}
	// log.Printf("Test10")
	res := service.useremployeeRepository.InsertUserEmployee(useremployee)
	return res
}

func (service *useremployeeService) Update(b entity.UserEmployee) entity.UserEmployee {
	res := service.useremployeeRepository.UpdateUserEmployee(b)
	return res
}

func (service *useremployeeService) Delete(b entity.UserEmployee) {
	service.useremployeeRepository.DeleteUserEmployee(b)
}

func (service *useremployeeService) All() []entity.UserEmployee {
	return service.useremployeeRepository.AllUserEmployee()
}

func (service *useremployeeService) FindByID(useremployeeID uint64) entity.UserEmployee {
	return service.useremployeeRepository.FindUserEmployeeByID(useremployeeID)
}

func (service *useremployeeService) IsAllowedToEdit(userID string, useremployeeID uint64) bool {
	b := service.useremployeeRepository.FindUserEmployeeByID(useremployeeID)
	id := fmt.Sprintf("%v", b.CreateUser)
	return userID == id
}
