package service

import (
	"fmt"
	"log"

	"sipil_api/dto"
	"sipil_api/entity"
	"sipil_api/repository"

	"github.com/mashingan/smapping"
)

//EmployeeService is a ....
type EmployeeService interface {
	Insert(b dto.EmployeeCreateDTO) entity.Employee
	Update(b entity.Employee) entity.Employee
	Delete(b entity.Employee)
	All() []entity.Employee
	FindByID(employeeID uint64) entity.Employee
	IsAllowedToEdit(userID string, employeeID uint64) bool
}

type employeeService struct {
	employeeRepository repository.EmployeeRepository
}

//NewEmployeeService .....
func NewEmployeeService(employeeRepo repository.EmployeeRepository) EmployeeService {
	return &employeeService{
		employeeRepository: employeeRepo,
	}
}

func (service *employeeService) Insert(b dto.EmployeeCreateDTO) entity.Employee {
	employee := entity.Employee{}
	// log.Printf("Test4")
	err := smapping.FillStruct(&employee, smapping.MapFields(&b))
	if err != nil {
		log.Fatalf("Failed map %v: ", err)
	}
	res := service.employeeRepository.InsertEmployee(employee)
	return res
}

func (service *employeeService) Update(b entity.Employee) entity.Employee {
	res := service.employeeRepository.UpdateEmployee(b)
	return res
}

func (service *employeeService) Delete(b entity.Employee) {
	service.employeeRepository.DeleteEmployee(b)
}

func (service *employeeService) All() []entity.Employee {
	return service.employeeRepository.AllEmployee()
}

func (service *employeeService) FindByID(employeeID uint64) entity.Employee {
	return service.employeeRepository.FindEmployeeByID(employeeID)
}

func (service *employeeService) IsAllowedToEdit(userID string, employeeID uint64) bool {
	b := service.employeeRepository.FindEmployeeByID(employeeID)
	id := fmt.Sprintf("%v", b.CreateUser)
	return userID == id
}
