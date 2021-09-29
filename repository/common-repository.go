package repository

import (
	"sipil_api/entity"

	"gorm.io/gorm"
)

//CommonRepository is a ....
type CommonRepository interface {
	InsertCommon(b entity.Common) entity.Common
	UpdateCommon(b entity.Common) entity.Common
	DeleteCommon(b entity.Common)
	AllCommon() []entity.Common
	ByType(sType string) []entity.Common
	FindCommonByID(commonID uint64) entity.Common
	ByYarnSup() []entity.Common
	ByYarnType() []entity.Common
	ByDiv() []entity.Common
}

type commonConnection struct {
	connection *gorm.DB
}

//NewCommonRepository creates an instance CommonRepository
func NewCommonRepository(dbConn *gorm.DB) CommonRepository {
	return &commonConnection{
		connection: dbConn,
	}
}

func (db *commonConnection) InsertCommon(b entity.Common) entity.Common {
	db.connection.Save(&b)
	db.connection.Preload("commons").Find(&b)
	return b
}

func (db *commonConnection) UpdateCommon(b entity.Common) entity.Common {
	var common entity.Common
	db.connection.Find(&common).Where("common_id = ?", b.CommonID)
	common.Value = b.Value
	db.connection.Updates(&b)
	return b
}

func (db *commonConnection) DeleteCommon(b entity.Common) {
	db.connection.Delete(&b)
}

func (db *commonConnection) FindCommonByID(commonID uint64) entity.Common {
	var common entity.Common
	db.connection.Preload("commons").Find(&common, commonID)
	return common
}

func (db *commonConnection) AllCommon() []entity.Common {
	var commons []entity.Common
	db.connection.Preload("commons").Find(&commons)
	return commons
}

func (db *commonConnection) ByType(sType string) []entity.Common {
	var commons []entity.Common
	// db.connection.Preload("commons").Where("common_type = ?", sType).Find(&commons)
	db.connection.Raw("SELECT * FROM commons WHERE common_type = ?", sType).Scan(&commons)
	return commons
}

func (db *commonConnection) ByYarnSup() []entity.Common {
	var commons []entity.Common
	db.connection.Raw("SELECT * FROM commons WHERE common_type = 'SUPPLIER_YARN'").Scan(&commons)
	return commons
}

func (db *commonConnection) ByDiv() []entity.Common {
	var commons []entity.Common
	db.connection.Raw("SELECT * FROM commons WHERE common_type LIKE 'DEPT_%'").Scan(&commons)
	return commons
}

func (db *commonConnection) ByYarnType() []entity.Common {
	var commons []entity.Common
	db.connection.Raw("SELECT * FROM commons WHERE common_type = 'TYPE_YARN'").Scan(&commons)
	return commons
}
