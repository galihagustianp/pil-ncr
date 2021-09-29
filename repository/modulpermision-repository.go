package repository

import (
	"sipil_api/entity"

	"gorm.io/gorm"
)

//ModulPermisionRepository is a ....
type ModulPermisionRepository interface {
	InsertModulPermision(b entity.ModulPermision) entity.ModulPermision
	UpdateModulPermision(b entity.ModulPermision) entity.ModulPermision
	DeleteModulPermision(b entity.ModulPermision)
	AllModulPermision() []entity.ModulPermision
	FindModulPermisionByID(modulpermisionID uint64) entity.ModulPermision
}

type modulpermisionConnection struct {
	connection *gorm.DB
}

//NewModulPermisionRepository creates an instance ModulPermisionRepository
func NewModulPermisionRepository(dbConn *gorm.DB) ModulPermisionRepository {
	return &modulpermisionConnection{
		connection: dbConn,
	}
}

func (db *modulpermisionConnection) InsertModulPermision(b entity.ModulPermision) entity.ModulPermision {
	db.connection.Save(&b)
	db.connection.Preload("Modul_Permisions").Find(&b)
	return b
}

func (db *modulpermisionConnection) UpdateModulPermision(b entity.ModulPermision) entity.ModulPermision {
	var modulpermision entity.ModulPermision
	db.connection.Find(&modulpermision).Where("modul_permision_id = ?", b.ModulPermisionID)
	modulpermision.Comment = b.Comment
	db.connection.Updates(&b)
	return b
}

func (db *modulpermisionConnection) DeleteModulPermision(b entity.ModulPermision) {
	db.connection.Delete(&b)
}

func (db *modulpermisionConnection) FindModulPermisionByID(modulpermisionID uint64) entity.ModulPermision {
	var modulpermision entity.ModulPermision
	db.connection.Preload("Modul_Permisions").Find(&modulpermision, modulpermisionID)
	return modulpermision
}

func (db *modulpermisionConnection) AllModulPermision() []entity.ModulPermision {
	var modulpermisions []entity.ModulPermision
	db.connection.Preload("Moduls").Preload("Moduls.Modul_Permisions").Find(&modulpermisions)
	return modulpermisions
}
