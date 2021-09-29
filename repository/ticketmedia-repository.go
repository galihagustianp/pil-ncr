package repository

import (
	"sipil_api/entity"

	"gorm.io/gorm"
)

//TicketMediaRepository is a ....
type TicketMediaRepository interface {
	InsertTicketMedia(b entity.TicketMedia) entity.TicketMedia
	UpdateTicketMedia(b entity.TicketMedia) entity.TicketMedia
	DeleteTicketMedia(b entity.TicketMedia)
	AllTicketMedia() []entity.TicketMediaDetail
	FindTicketMediaByID(Media_Id uint64) entity.TicketMediaDetail
	ByTicketID(ticketID string) []entity.TicketMediaDetail
	FilterCAPA(ticketID string) []entity.TicketMediaDetail
	FilterY() []entity.TicketMediaDetail
}

type ticketmediaConnection struct {
	connection *gorm.DB
}

//NewTicketMediaRepository creates an instance TicketMediaRepository
func NewTicketMediaRepository(dbConn *gorm.DB) TicketMediaRepository {
	return &ticketmediaConnection{
		connection: dbConn,
	}
}

func (db *ticketmediaConnection) InsertTicketMedia(b entity.TicketMedia) entity.TicketMedia {
	db.connection.Save(&b)
	db.connection.Preload("TicketMedia").Find(&b)
	return b
}

func (db *ticketmediaConnection) UpdateTicketMedia(b entity.TicketMedia) entity.TicketMedia {
	var ticketmedia entity.TicketMedia
	db.connection.Find(&ticketmedia).Where("media_id = ?", b.Media_Id)
	ticketmedia.Comment = b.Comment
	db.connection.Updates(&b)
	return b
}

func (db *ticketmediaConnection) DeleteTicketMedia(b entity.TicketMedia) {
	db.connection.Delete(&b)
}

func (db *ticketmediaConnection) FindTicketMediaByID(Media_Id uint64) entity.TicketMediaDetail {
	var ticketmedia entity.TicketMediaDetail
	// db.connection.Preload("TicketMedia").Find(&ticketmedia, Media_Id)
	db.connection.Raw("SELECT ticket_media.media_id, ticket_media.media_name, ticket_media.media_file, ticket_media.media_size, ticket_media.comment, ticket_media.is_usable,ticket_media.create_user, ticket_media.create_date, ticket_media.update_user, ticket_media.update_date, tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.confirm, tickets.verification_user FROM ticket_media JOIN tickets ON ticket_media.ticket_id = tickets.ticket_id WHERE ticket_media.media_id = ? ", Media_Id).Scan(&ticketmedia)
	return ticketmedia
}

func (db *ticketmediaConnection) AllTicketMedia() []entity.TicketMediaDetail {
	var ticketmedia []entity.TicketMediaDetail
	// db.connection.Preload("TicketMedia").Find(&ticketmedia)
	db.connection.Raw("SELECT ticket_media.media_id, ticket_media.media_name, ticket_media.media_file, ticket_media.media_size, ticket_media.comment, ticket_media.is_usable,ticket_media.create_user, ticket_media.create_date, ticket_media.update_user, ticket_media.update_date, tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.confirm, tickets.verification_user FROM ticket_media JOIN tickets ON ticket_media.ticket_id = tickets.ticket_id").Scan(&ticketmedia)
	return ticketmedia
}

func (db *ticketmediaConnection) ByTicketID(ticketID string) []entity.TicketMediaDetail {
	var ticketmedia []entity.TicketMediaDetail
	db.connection.Raw("SELECT ticket_media.media_id, ticket_media.media_name, ticket_media.media_file, ticket_media.media_size, ticket_media.comment, ticket_media.is_usable,ticket_media.create_user, ticket_media.create_date, ticket_media.update_user, ticket_media.update_date, tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.confirm, tickets.verification_user FROM ticket_media JOIN tickets ON ticket_media.ticket_id = tickets.ticket_id WHERE ticket_media.ticket_id = ? AND ticket_media.is_usable = 'Y' ", ticketID).Scan(&ticketmedia)
	return ticketmedia
}

func (db *ticketmediaConnection) FilterCAPA(ticketID string) []entity.TicketMediaDetail {
	var ticketmedia []entity.TicketMediaDetail
	db.connection.Raw("SELECT ticket_media.media_id, ticket_media.media_name, ticket_media.media_file, ticket_media.media_size, ticket_media.comment, ticket_media.is_usable,ticket_media.create_user, ticket_media.create_date, ticket_media.update_user, ticket_media.update_date, tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.confirm, tickets.verification_user FROM ticket_media JOIN tickets ON ticket_media.ticket_id = tickets.ticket_id WHERE ticket_media.ticket_id = ? AND ticket_media.is_usable = 'C' ", ticketID).Scan(&ticketmedia)
	return ticketmedia
}

func (db *ticketmediaConnection) FilterY() []entity.TicketMediaDetail {
	var ticketmedia []entity.TicketMediaDetail
	db.connection.Raw("SELECT ticket_media.media_id, ticket_media.media_name, ticket_media.media_file, ticket_media.media_size, ticket_media.comment, ticket_media.is_usable,ticket_media.create_user, ticket_media.create_date, ticket_media.update_user, ticket_media.update_date, tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.confirm, tickets.verification_user FROM ticket_media JOIN tickets ON ticket_media.ticket_id = tickets.ticket_id WHERE ticket_media.is_usable = 'Y' ").Scan(&ticketmedia)
	return ticketmedia
}
