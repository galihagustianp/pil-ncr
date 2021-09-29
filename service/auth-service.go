package service

import (
	"log"

	"sipil_api/dto"
	"sipil_api/entity"
	"sipil_api/repository"

	"github.com/mashingan/smapping"
	"golang.org/x/crypto/bcrypt"
)

//AuthService is a contract about something that this service can do
type AuthService interface {
	VerifyCredential(username string, password string) interface{}
	CreateUser(user dto.RegisterDTO) entity.UserJoin
	FindByUserName(username string) entity.UserJoin
	IsDuplicateUserName(username string) bool
}

type authService struct {
	userRepository repository.UserRepository
}

//NewAuthService creates a new instance of AuthService
func NewAuthService(userRep repository.UserRepository) AuthService {
	return &authService{
		userRepository: userRep,
	}
}

func (service *authService) VerifyCredential(username string, password string) interface{} {
	res := service.userRepository.VerifyCredential(username, password)
	if v, ok := res.(entity.UserJoin); ok {
		comparedPassword := comparePassword(v.Password, []byte(password))
		if v.UserName == username && comparedPassword {
			return res
		}
		return false
	}
	return false
}

func (service *authService) CreateUser(user dto.RegisterDTO) entity.UserJoin {
	userToCreate := entity.UserJoin{}
	err := smapping.FillStruct(&userToCreate, smapping.MapFields(&user))
	if err != nil {
		log.Fatalf("Failed map %v", err)
	}
	res := service.userRepository.InsertUser(userToCreate)
	return res
}

func (service *authService) FindByUserName(username string) entity.UserJoin {
	return service.userRepository.FindByUserName(username)
}

func (service *authService) IsDuplicateUserName(username string) bool {
	res := service.userRepository.IsDuplicateUserName(username)
	return !(res.Error == nil)
}

func comparePassword(hashedPwd string, plainPassword []byte) bool {
	byteHash := []byte(hashedPwd)
	err := bcrypt.CompareHashAndPassword(byteHash, plainPassword)
	if err != nil {
		log.Println(err)
		return false
	}
	return true
}
