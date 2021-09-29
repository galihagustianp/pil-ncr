package service

import (
	"fmt"
	"log"

	"sipil_api/dto"
	"sipil_api/entity"
	"sipil_api/repository"

	"github.com/mashingan/smapping"
)

//TicketDetailService is a ....
type TicketDetailService interface {
	Insert(b dto.TicketDetailCreateDTO) entity.TicketDetail
	Update(b entity.TicketDetail) entity.TicketDetail
	Delete(b entity.TicketDetail)
	All() []entity.TicketDetail
	FindByID(ticketdetailID uint64) entity.TicketDetail
	IsAllowedToEdit(userID string, ticketdetailID uint64) bool
}

type ticketdetailService struct {
	ticketdetailRepository repository.TicketDetailRepository
}

//NewTicketDetailService .....
func NewTicketDetailService(ticketdetailRepo repository.TicketDetailRepository) TicketDetailService {
	return &ticketdetailService{
		ticketdetailRepository: ticketdetailRepo,
	}
}

func (service *ticketdetailService) Insert(b dto.TicketDetailCreateDTO) entity.TicketDetail {
	ticketdetail := entity.TicketDetail{}
	err := smapping.FillStruct(&ticketdetail, smapping.MapFields(&b))
	if err != nil {
		log.Fatalf("Failed map %v: ", err)
	}
	res := service.ticketdetailRepository.InsertTicketDetail(ticketdetail)
	return res
}

func (service *ticketdetailService) Update(b entity.TicketDetail) entity.TicketDetail {
	res := service.ticketdetailRepository.UpdateTicketDetail(b)
	return res
}

func (service *ticketdetailService) Delete(b entity.TicketDetail) {
	service.ticketdetailRepository.DeleteTicketDetail(b)
}

func (service *ticketdetailService) All() []entity.TicketDetail {
	return service.ticketdetailRepository.AllTicketDetail()
}

func (service *ticketdetailService) FindByID(ticketdetailID uint64) entity.TicketDetail {
	return service.ticketdetailRepository.FindTicketDetailByID(ticketdetailID)
}

func (service *ticketdetailService) IsAllowedToEdit(userID string, ticketdetailID uint64) bool {
	b := service.ticketdetailRepository.FindTicketDetailByID(ticketdetailID)
	id := fmt.Sprintf("%v", b.CreateUser)
	return userID == id
}
