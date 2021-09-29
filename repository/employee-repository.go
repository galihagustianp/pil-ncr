package repository

import (
	"sipil_api/entity"

	"gorm.io/gorm"
)

//EmployeeRepository is a ....
type EmployeeRepository interface {
	InsertEmployee(b entity.Employee) entity.Employee
	UpdateEmployee(b entity.Employee) entity.Employee
	DeleteEmployee(b entity.Employee)
	AllEmployee() []entity.Employee
	FindEmployeeByID(employeeID uint64) entity.Employee
}

type employeeConnection struct {
	connection *gorm.DB
}

//NewEmployeeRepository creates an instance EmployeeRepository
func NewEmployeeRepository(dbConn *gorm.DB) EmployeeRepository {
	return &employeeConnection{
		connection: dbConn,
	}
}

func (db *employeeConnection) InsertEmployee(b entity.Employee) entity.Employee {
	// log.Printf("Test4")
	db.connection.Save(&b)
	db.connection.Preload("employes").Find(&b)
	return b
}

func (db *employeeConnection) UpdateEmployee(b entity.Employee) entity.Employee {
	var employee entity.Employee
	db.connection.Find(&employee).Where("employee_id = ?", b.EmployeeID)
	employee.Address = b.Address
	db.connection.Updates(&b)
	return b
}

func (db *employeeConnection) DeleteEmployee(b entity.Employee) {
	db.connection.Delete(&b)
}

func (db *employeeConnection) FindEmployeeByID(employeeID uint64) entity.Employee {
	var employee entity.Employee
	db.connection.Preload("employes").Find(&employee, employeeID)
	return employee
}

func (db *employeeConnection) AllEmployee() []entity.Employee {
	var employees []entity.Employee
	db.connection.Preload("employes").Find(&employees)
	return employees
}
