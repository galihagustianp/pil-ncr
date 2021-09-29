package service

import (
	"fmt"
	"log"

	"sipil_api/dto"
	"sipil_api/entity"
	"sipil_api/repository"

	"github.com/mashingan/smapping"
)

//TicketService is a ....
type TicketService interface {
	Insert(b dto.TicketCreateDTO) entity.Ticket
	Update(b entity.Ticket) entity.Ticket
	Delete(b entity.Ticket)
	All() []entity.Combined
	FindByID(ticketID uint64) entity.Combined
	ByType(sType string) []entity.Combined
	ByStatus(sStatus string) []entity.Combined
	ByConform(sConform string) []entity.Combined
	ByTypeStatus(sType string, sStatus string, sDate string) []entity.Combined
	ByDateType(sDate string, sType string, sItem string) []entity.Combined
	ByDept(sDept string) []entity.Combined
	ByTypeDate(sMonth string, sYear string) []entity.TypeDate
	ByDate(sFrom string, sTo string) []entity.Combined
	ByDeptStatus(sDept string, sStatus string) []entity.Combined
	CountByStatus() []entity.Count
	IsAllowedToEdit(userID string, ticketID uint64) bool
	ByDeptSend(sSend string, sStatus string) []entity.Combined
	ByTypeDateDept(sTypeDate string, sYear string, sDept string) []entity.TypeDate
	ByTypeDateUser(sDept string, sMonth string) []entity.TypeDateUser
	ByAll(dateFrom string, dateTo string, sType string, all_type string, all_item string, itemGreige string, itemYarn string, itemFabric string) []entity.Combined
	ReportDept(sDept string, dateFrom string, dateTo string, sType string, all_type string, all_item string, itemGreige string, itemYarn string, itemFabric string) []entity.Combined
	DashboardTypeCount(sDept string) []entity.Count
	ItemTicket(sItemTicket string) []entity.Combined
}

type ticketService struct {
	ticketRepository repository.TicketRepository
}

//NewTicketService .....
func NewTicketService(ticketRepo repository.TicketRepository) TicketService {
	return &ticketService{
		ticketRepository: ticketRepo,
	}
}

func (service *ticketService) Insert(b dto.TicketCreateDTO) entity.Ticket {
	ticket := entity.Ticket{}
	err := smapping.FillStruct(&ticket, smapping.MapFields(&b))
	if err != nil {
		log.Fatalf("Failed map %v: ", err)
	}
	res := service.ticketRepository.InsertTicket(ticket)
	return res
}

func (service *ticketService) Update(b entity.Ticket) entity.Ticket {
	res := service.ticketRepository.UpdateTicket(b)
	return res
}

func (service *ticketService) Delete(b entity.Ticket) {
	service.ticketRepository.DeleteTicket(b)
}

func (service *ticketService) All() []entity.Combined {
	return service.ticketRepository.AllTicket()
}

func (service *ticketService) ByType(sType string) []entity.Combined {
	return service.ticketRepository.ByType(sType)
}

func (service *ticketService) ByStatus(sStatus string) []entity.Combined {
	return service.ticketRepository.ByStatus(sStatus)
}

func (service *ticketService) ByConform(sConform string) []entity.Combined {
	return service.ticketRepository.ByConform(sConform)
}

func (service *ticketService) ByTypeStatus(sType string, sStatus string, sDate string) []entity.Combined {
	return service.ticketRepository.ByTypeStatus(sType, sStatus, sDate)
}

func (service *ticketService) ByDateType(sDate string, sType string, sItem string) []entity.Combined {
	return service.ticketRepository.ByDateType(sDate, sType, sItem)
}

func (service *ticketService) ByDept(sDept string) []entity.Combined {
	return service.ticketRepository.ByDept(sDept)
}

func (service *ticketService) ByDate(sFrom string, sTo string) []entity.Combined {
	return service.ticketRepository.ByDate(sFrom, sTo)
}

func (service *ticketService) ByDeptStatus(sDept string, sStatus string) []entity.Combined {
	return service.ticketRepository.ByDeptStatus(sDept, sStatus)
}

func (service *ticketService) CountByStatus() []entity.Count {
	return service.ticketRepository.CountByStatus()
}

func (service *ticketService) ByDeptSend(sSend string, sStatus string) []entity.Combined {
	return service.ticketRepository.ByDeptSend(sSend, sStatus)
}

func (service *ticketService) FindByID(ticketID uint64) entity.Combined {
	return service.ticketRepository.FindTicketByID(ticketID)
}

func (service *ticketService) IsAllowedToEdit(userID string, ticketID uint64) bool {
	b := service.ticketRepository.FindTicketByID(ticketID)
	id := fmt.Sprintf("%v", b.CreateUser)
	return userID == id
}

func (service *ticketService) ByTypeDate(sMonth string, sYear string) []entity.TypeDate {
	return service.ticketRepository.ByTypeDate(sMonth, sYear)
}

func (service *ticketService) ByTypeDateDept(sTypeDate string, sYear string, sDept string) []entity.TypeDate {
	return service.ticketRepository.ByTypeDateDept(sTypeDate, sYear, sDept)
}

func (service *ticketService) ByTypeDateUser(sDept string, sMonth string) []entity.TypeDateUser {
	return service.ticketRepository.ByTypeDateUser(sDept, sMonth)
}

func (service *ticketService) ByAll(dateFrom string, dateTo string, sType string, all_type string, all_item string, itemGreige string, itemYarn string, itemFabric string) []entity.Combined {
	return service.ticketRepository.ByAll(dateFrom, dateTo, sType, all_type, all_item, itemGreige, itemYarn, itemFabric)
}

func (service *ticketService) DashboardTypeCount(sDept string) []entity.Count {
	return service.ticketRepository.DashboardTypeCount(sDept)
}

func (service *ticketService) ItemTicket(sItemTicket string) []entity.Combined {
	return service.ticketRepository.ItemTicket(sItemTicket)
}

func (service *ticketService) ReportDept(sDept string, dateFrom string, dateTo string, sType string, all_type string, all_item string, itemGreige string, itemYarn string, itemFabric string) []entity.Combined {
	return service.ticketRepository.ReportDept(sDept, dateFrom, dateTo, sType, all_type, all_item, itemGreige, itemYarn, itemFabric)

}
