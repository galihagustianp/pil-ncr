package service

import (
	"fmt"
	"log"

	"sipil_api/dto"
	"sipil_api/entity"
	"sipil_api/repository"

	"github.com/mashingan/smapping"
)

//ModulPermisionService is a ....
type ModulPermisionService interface {
	Insert(b dto.ModulPermisionCreateDTO) entity.ModulPermision
	Update(b entity.ModulPermision) entity.ModulPermision
	Delete(b entity.ModulPermision)
	All() []entity.ModulPermision
	FindByID(modulpermisionID uint64) entity.ModulPermision
	IsAllowedToEdit(userID string, modulpermisionID uint64) bool
}

type modulpermisionService struct {
	modulpermisionRepository repository.ModulPermisionRepository
}

//NewModulPermisionService .....
func NewModulPermisionService(modulpermisionRepo repository.ModulPermisionRepository) ModulPermisionService {
	return &modulpermisionService{
		modulpermisionRepository: modulpermisionRepo,
	}
}

func (service *modulpermisionService) Insert(b dto.ModulPermisionCreateDTO) entity.ModulPermision {
	modulpermision := entity.ModulPermision{}
	err := smapping.FillStruct(&modulpermision, smapping.MapFields(&b))
	if err != nil {
		log.Fatalf("Failed map %v: ", err)
	}
	res := service.modulpermisionRepository.InsertModulPermision(modulpermision)
	return res
}

func (service *modulpermisionService) Update(b entity.ModulPermision) entity.ModulPermision {
	res := service.modulpermisionRepository.UpdateModulPermision(b)
	return res
}

func (service *modulpermisionService) Delete(b entity.ModulPermision) {
	service.modulpermisionRepository.DeleteModulPermision(b)
}

func (service *modulpermisionService) All() []entity.ModulPermision {
	return service.modulpermisionRepository.AllModulPermision()
}

func (service *modulpermisionService) FindByID(modulpermisionID uint64) entity.ModulPermision {
	return service.modulpermisionRepository.FindModulPermisionByID(modulpermisionID)
}

func (service *modulpermisionService) IsAllowedToEdit(userID string, modulpermisionID uint64) bool {
	b := service.modulpermisionRepository.FindModulPermisionByID(modulpermisionID)
	id := fmt.Sprintf("%v", b.CreateUser)
	return userID == id
}
