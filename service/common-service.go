package service

import (
	"fmt"
	"log"

	"sipil_api/dto"
	"sipil_api/entity"
	"sipil_api/repository"

	"github.com/mashingan/smapping"
)

//CommonService is a ....
type CommonService interface {
	Insert(b dto.CommonCreateDTO) entity.Common
	Update(b entity.Common) entity.Common
	Delete(b entity.Common)
	All() []entity.Common
	ByType(sType string) []entity.Common
	FindByID(commonID uint64) entity.Common
	IsAllowedToEdit(userID string, commonID uint64) bool
	ByYarnSup() []entity.Common
	ByYarnType() []entity.Common
	ByDiv() []entity.Common
}

type commonService struct {
	commonRepository repository.CommonRepository
}

//NewCommonService .....
func NewCommonService(commonRepo repository.CommonRepository) CommonService {
	return &commonService{
		commonRepository: commonRepo,
	}
}

func (service *commonService) Insert(b dto.CommonCreateDTO) entity.Common {
	common := entity.Common{}
	err := smapping.FillStruct(&common, smapping.MapFields(&b))
	if err != nil {
		log.Fatalf("Failed map %v: ", err)
	}
	res := service.commonRepository.InsertCommon(common)
	return res
}

func (service *commonService) Update(b entity.Common) entity.Common {
	res := service.commonRepository.UpdateCommon(b)
	return res
}

func (service *commonService) Delete(b entity.Common) {
	service.commonRepository.DeleteCommon(b)
}

func (service *commonService) All() []entity.Common {
	return service.commonRepository.AllCommon()
}

func (service *commonService) ByType(sType string) []entity.Common {
	return service.commonRepository.ByType(sType)
}

func (service *commonService) ByYarnSup() []entity.Common {
	return service.commonRepository.ByYarnSup()
}

func (service *commonService) ByDiv() []entity.Common {
	return service.commonRepository.ByDiv()
}

func (service *commonService) ByYarnType() []entity.Common {
	return service.commonRepository.ByYarnType()
}

func (service *commonService) FindByID(commonID uint64) entity.Common {
	return service.commonRepository.FindCommonByID(commonID)
}

func (service *commonService) IsAllowedToEdit(userID string, commonID uint64) bool {
	b := service.commonRepository.FindCommonByID(commonID)
	id := fmt.Sprintf("%v", b.CreateUser)
	return userID == id
}
