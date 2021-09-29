package repository

import (
	"sipil_api/entity"

	"gorm.io/gorm"
)

type GreigeRepository interface {
	InsertGreige(b entity.Greige) entity.Greige
	UpdateGreige(b entity.Greige) entity.Greige
	DeleteGreige(b entity.Greige)
	AllGreige() []entity.Greige
	FindGreigeByID(greigeID uint64) entity.Greige
	BySoRefNum(sSoRefNum string) entity.Greige
	BySoLineNum(sSoLineNum string) entity.Greige
	BySoNum(sSoNum string) entity.Greige
}

type greigeConnection struct {
	connection *gorm.DB
}

//NewGreigeRepository creates an instance GreigeRepository
func NewGreigeRepository(dbConn *gorm.DB) GreigeRepository {
	return &greigeConnection{
		connection: dbConn,
	}
}

func (db2 *greigeConnection) InsertGreige(b entity.Greige) entity.Greige {
	db2.connection.Save(&b)
	db2.connection.Preload("greiges").Find(&b)
	return b
}

func (db2 *greigeConnection) UpdateGreige(b entity.Greige) entity.Greige {
	var greige entity.Greige
	db2.connection.Find(&greige).Where("greige_id = ?", b.GreigeID)
	greige.CardName = b.CardName
	db2.connection.Updates(&b)
	return b
}

func (db2 *greigeConnection) DeleteGreige(b entity.Greige) {
	db2.connection.Delete(&b)
}

func (db2 *greigeConnection) FindGreigeByID(greigeID uint64) entity.Greige {
	var greiges entity.Greige
	db2.connection.Raw("SELECT * FROM INVN_PROD_RM_GREIGE WHERE GREIGE_ID = ?", greigeID).Scan(&greiges)
	return greiges
}

func (db2 *greigeConnection) BySoRefNum(sSoRefNum string) entity.Greige {
	var greiges entity.Greige
	db2.connection.Raw("SELECT * FROM INVN_PROD_RM_GREIGE WHERE SO_REF_NUM = ?", sSoRefNum).Scan(&greiges)
	return greiges
}

func (db2 *greigeConnection) BySoLineNum(sSoLineNum string) entity.Greige {
	var greiges entity.Greige
	db2.connection.Raw("SELECT * FROM INVN_PROD_RM_GREIGE WHERE SO_LINE_NUM = ?", sSoLineNum).Scan(&greiges)
	return greiges
}

func (db2 *greigeConnection) BySoNum(sSoNum string) entity.Greige {
	var greiges entity.Greige
	db2.connection.Raw("SELECT * FROM INVN_PROD_RM_GREIGE WHERE SO_NUM = ?", sSoNum).Scan(&greiges)
	return greiges
}

func (db2 *greigeConnection) AllGreige() []entity.Greige {
	var greiges []entity.Greige
	db2.connection.Raw("SELECT * FROM INVN_PROD_RM_GREIGE").Scan(&greiges)
	return greiges
}
