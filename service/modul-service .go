package service

import (
	"fmt"
	"log"

	"sipil_api/dto"
	"sipil_api/entity"
	"sipil_api/repository"

	"github.com/mashingan/smapping"
)

//ModulService is a ....
type ModulService interface {
	Insert(b dto.ModulCreateDTO) entity.Modul
	Update(b entity.Modul) entity.Modul
	Delete(b entity.Modul)
	All() []entity.Modul
	FindByID(modulID uint64) entity.Modul
	IsAllowedToEdit(userID string, modulID uint64) bool
}

type modulService struct {
	modulRepository repository.ModulRepository
}

//NewModulService .....
func NewModulService(modulRepo repository.ModulRepository) ModulService {
	return &modulService{
		modulRepository: modulRepo,
	}
}

func (service *modulService) Insert(b dto.ModulCreateDTO) entity.Modul {
	modul := entity.Modul{}
	err := smapping.FillStruct(&modul, smapping.MapFields(&b))
	if err != nil {
		log.Fatalf("Failed map %v: ", err)
	}
	res := service.modulRepository.InsertModul(modul)
	return res
}

func (service *modulService) Update(b entity.Modul) entity.Modul {
	res := service.modulRepository.UpdateModul(b)
	return res
}

func (service *modulService) Delete(b entity.Modul) {
	service.modulRepository.DeleteModul(b)
}

func (service *modulService) All() []entity.Modul {
	return service.modulRepository.AllModul()
}

func (service *modulService) FindByID(modulID uint64) entity.Modul {
	return service.modulRepository.FindModulByID(modulID)
}

func (service *modulService) IsAllowedToEdit(userID string, modulID uint64) bool {
	b := service.modulRepository.FindModulByID(modulID)
	id := fmt.Sprintf("%v", b.CreateUser)
	return userID == id
}
