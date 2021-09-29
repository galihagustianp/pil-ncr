package service

import (
	"fmt"
	"log"

	"sipil_api/dto"
	"sipil_api/entity"
	"sipil_api/repository"

	"github.com/mashingan/smapping"
)

//TicketMediaService is a ....
type TicketMediaService interface {
	Insert(b dto.TicketMediaCreateDTO) entity.TicketMedia
	Update(b entity.TicketMedia) entity.TicketMedia
	Delete(b entity.TicketMedia)
	All() []entity.TicketMediaDetail
	FindByID(ticketmediaID uint64) entity.TicketMediaDetail
	IsAllowedToEdit(userID string, ticketmediaID uint64) bool
	ByTicketID(sTicketID string) []entity.TicketMediaDetail
	FilterCAPA(ticketID string) []entity.TicketMediaDetail
	FilterY() []entity.TicketMediaDetail
}

type ticketmediaService struct {
	ticketmediaRepository repository.TicketMediaRepository
}

//NewTicketMediaService .....
func NewTicketMediaService(ticketmediaRepo repository.TicketMediaRepository) TicketMediaService {
	return &ticketmediaService{
		ticketmediaRepository: ticketmediaRepo,
	}
}

func (service *ticketmediaService) Insert(b dto.TicketMediaCreateDTO) entity.TicketMedia {
	ticketmedia := entity.TicketMedia{}
	err := smapping.FillStruct(&ticketmedia, smapping.MapFields(&b))
	if err != nil {
		log.Fatalf("Failed map %v: ", err)
	}
	res := service.ticketmediaRepository.InsertTicketMedia(ticketmedia)
	return res
}

func (service *ticketmediaService) Update(b entity.TicketMedia) entity.TicketMedia {
	res := service.ticketmediaRepository.UpdateTicketMedia(b)
	return res
}

func (service *ticketmediaService) Delete(b entity.TicketMedia) {
	service.ticketmediaRepository.DeleteTicketMedia(b)
}

func (service *ticketmediaService) All() []entity.TicketMediaDetail {
	return service.ticketmediaRepository.AllTicketMedia()
}

func (service *ticketmediaService) FindByID(ticketmediaID uint64) entity.TicketMediaDetail {
	return service.ticketmediaRepository.FindTicketMediaByID(ticketmediaID)
}

func (service *ticketmediaService) IsAllowedToEdit(userID string, ticketmediaID uint64) bool {
	b := service.ticketmediaRepository.FindTicketMediaByID(ticketmediaID)
	id := fmt.Sprintf("%v", b.CreateUser)
	return userID == id
}

func (service *ticketmediaService) ByTicketID(sTicketID string) []entity.TicketMediaDetail {
	return service.ticketmediaRepository.ByTicketID(sTicketID)
}

func (service *ticketmediaService) FilterCAPA(ticketID string) []entity.TicketMediaDetail {
	return service.ticketmediaRepository.FilterCAPA(ticketID)
}

func (service *ticketmediaService) FilterY() []entity.TicketMediaDetail {
	return service.ticketmediaRepository.FilterY()
}
