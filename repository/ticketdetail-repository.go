package repository

import (
	"sipil_api/entity"

	"gorm.io/gorm"
)

//TicketDetailRepository is a ....
type TicketDetailRepository interface {
	InsertTicketDetail(b entity.TicketDetail) entity.TicketDetail
	UpdateTicketDetail(b entity.TicketDetail) entity.TicketDetail
	DeleteTicketDetail(b entity.TicketDetail)
	AllTicketDetail() []entity.TicketDetail
	FindTicketDetailByID(ticketdetailID uint64) entity.TicketDetail
}

type ticketdetailConnection struct {
	connection *gorm.DB
}

//NewTicketDetailRepository creates an instance TicketDetailRepository
func NewTicketDetailRepository(dbConn *gorm.DB) TicketDetailRepository {
	return &ticketdetailConnection{
		connection: dbConn,
	}
}

func (db *ticketdetailConnection) InsertTicketDetail(b entity.TicketDetail) entity.TicketDetail {
	db.connection.Save(&b)
	db.connection.Preload("User").Find(&b)
	return b
}

func (db *ticketdetailConnection) UpdateTicketDetail(b entity.TicketDetail) entity.TicketDetail {
	var ticketdetail entity.TicketDetail
	db.connection.Find(&ticketdetail).Where("ticket_detail_id = ?", b.TicketDetailID)
	ticketdetail.Process = b.Process
	db.connection.Updates(&b)
	return b
}

func (db *ticketdetailConnection) DeleteTicketDetail(b entity.TicketDetail) {
	db.connection.Delete(&b)
}

func (db *ticketdetailConnection) FindTicketDetailByID(ticketdetailID uint64) entity.TicketDetail {
	var ticketdetail entity.TicketDetail
	db.connection.Preload("ticket_details").Find(&ticketdetail).Where("ticket_id = ?", ticketdetailID)

	return ticketdetail
}

func (db *ticketdetailConnection) AllTicketDetail() []entity.TicketDetail {
	var ticketdetails []entity.TicketDetail
	db.connection.Preload("ticketdetails").Find(&ticketdetails)
	return ticketdetails
}
