package repository

import (
	"sipil_api/entity"

	"gorm.io/gorm"
)

//UserEmployeeRepository is a ....
type UserEmployeeRepository interface {
	InsertUserEmployee(b entity.UserEmployee) entity.UserEmployee
	UpdateUserEmployee(b entity.UserEmployee) entity.UserEmployee
	DeleteUserEmployee(b entity.UserEmployee)
	AllUserEmployee() []entity.UserEmployee
	FindUserEmployeeByID(useremployeeID uint64) entity.UserEmployee
}

type useremployeeConnection struct {
	connection *gorm.DB
}

//NewUserEmployeeRepository creates an instance UserEmployeeRepository
func NewUserEmployeeRepository(dbConn *gorm.DB) UserEmployeeRepository {
	return &useremployeeConnection{
		connection: dbConn,
	}
}

func (db *useremployeeConnection) InsertUserEmployee(b entity.UserEmployee) entity.UserEmployee {
	db.connection.Save(&b)
	db.connection.Preload("useremployes").Find(&b)
	return b
}

func (db *useremployeeConnection) UpdateUserEmployee(b entity.UserEmployee) entity.UserEmployee {
	var useremployee entity.UserEmployee
	db.connection.Find(&useremployee).Where("user_employee_id = ?", b.UserEmployeeID)
	useremployee.Comment = b.Comment
	db.connection.Updates(&b)
	return b
}

func (db *useremployeeConnection) DeleteUserEmployee(b entity.UserEmployee) {
	db.connection.Delete(&b)
}

func (db *useremployeeConnection) FindUserEmployeeByID(useremployeeID uint64) entity.UserEmployee {
	var useremployee entity.UserEmployee
	db.connection.Preload("useremployes").Find(&useremployee, useremployeeID)
	return useremployee
}

func (db *useremployeeConnection) AllUserEmployee() []entity.UserEmployee {
	var useremployees []entity.UserEmployee
	db.connection.Preload("useremployes").Find(&useremployees)
	return useremployees
}
