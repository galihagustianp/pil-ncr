package repository

import (
	"sipil_api/entity"

	"gorm.io/gorm"
)

//ModulRepository is a ....
type ModulRepository interface {
	InsertModul(b entity.Modul) entity.Modul
	UpdateModul(b entity.Modul) entity.Modul
	DeleteModul(b entity.Modul)
	AllModul() []entity.Modul
	FindModulByID(modulID uint64) entity.Modul
}

type modulConnection struct {
	connection *gorm.DB
}

//NewModulRepository creates an instance ModulRepository
func NewModulRepository(dbConn *gorm.DB) ModulRepository {
	return &modulConnection{
		connection: dbConn,
	}
}

func (db *modulConnection) InsertModul(b entity.Modul) entity.Modul {
	db.connection.Save(&b)
	db.connection.Preload("moduls").Find(&b)
	return b
}

func (db *modulConnection) UpdateModul(b entity.Modul) entity.Modul {
	var modul entity.Modul
	db.connection.Find(&modul).Where("modul_id = ?", b.ModulID)
	modul.Comment = b.Comment
	db.connection.Updates(&b)
	return b
}

func (db *modulConnection) DeleteModul(b entity.Modul) {
	db.connection.Delete(&b)
}

func (db *modulConnection) FindModulByID(modulID uint64) entity.Modul {
	var modul entity.Modul
	db.connection.Preload("moduls").Find(&modul, modulID)
	return modul
}

func (db *modulConnection) AllModul() []entity.Modul {
	var moduls []entity.Modul
	db.connection.Preload("moduls").Find(&moduls)
	return moduls
}
