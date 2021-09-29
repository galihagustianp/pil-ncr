package service

import (
	"fmt"
	"log"
	"sipil_api/entity"
	"sipil_api/repository"

	"github.com/mashingan/smapping"
)

type GreigeService interface {
	Insert(b entity.Greige) entity.Greige
	Update(b entity.Greige) entity.Greige
	Delete(b entity.Greige)
	AllGreige() []entity.Greige
	FindGreigeByID(greigeID uint64) entity.Greige
	IsAllowedToEdit(userID string, greigeID uint64) bool
	BySoLineNum(sSoLineNum string) entity.Greige
	BySoNum(sSoNum string) entity.Greige
	BySoRefNum(sSoRefNum string) entity.Greige
}

type greigeService struct {
	greigeRepository repository.GreigeRepository
}

//NewGreigeService .....
func NewGreigeService(greigeRepo repository.GreigeRepository) GreigeService {
	return &greigeService{
		greigeRepository: greigeRepo,
	}
}

func (service *greigeService) AllGreige() []entity.Greige {
	return service.greigeRepository.AllGreige()
}

func (service *greigeService) Insert(b entity.Greige) entity.Greige {
	greige := entity.Greige{}
	err := smapping.FillStruct(&greige, smapping.MapFields(&b))
	if err != nil {
		log.Fatalf("Failed map %v: ", err)
	}
	res := service.greigeRepository.InsertGreige(greige)
	return res
}

func (service *greigeService) Update(b entity.Greige) entity.Greige {
	res := service.greigeRepository.UpdateGreige(b)
	return res
}

func (service *greigeService) Delete(b entity.Greige) {
	service.greigeRepository.DeleteGreige(b)
}

func (service *greigeService) All() []entity.Greige {
	return service.greigeRepository.AllGreige()
}

func (service *greigeService) FindGreigeByID(greigeID uint64) entity.Greige {
	return service.greigeRepository.FindGreigeByID(greigeID)
}

func (service *greigeService) BySoLineNum(sSoLineNum string) entity.Greige {
	return service.greigeRepository.BySoLineNum(sSoLineNum)
}

func (service *greigeService) BySoRefNum(sSoRefNum string) entity.Greige {
	return service.greigeRepository.BySoRefNum(sSoRefNum)
}

func (service *greigeService) BySoNum(sSoNum string) entity.Greige {
	return service.greigeRepository.BySoNum(sSoNum)
}

func (service *greigeService) IsAllowedToEdit(userID string, greigeID uint64) bool {
	b := service.greigeRepository.FindGreigeByID(greigeID)
	id := fmt.Sprintf("%v", b.Create_Id)
	return userID == id
}
