package repository

import (
	"log"

	"sipil_api/entity"

	"golang.org/x/crypto/bcrypt"
	"gorm.io/gorm"
)

//UserRepository is contract what userRepository can do to db
type UserRepository interface {
	InsertUser(user entity.UserJoin) entity.UserJoin
	UpdateUser(user entity.UserJoin) entity.UserJoin
	VerifyCredential(username string, password string) interface{}
	IsDuplicateUserName(username string) (tx *gorm.DB)
	FindByUserName(username string) entity.UserJoin
	ProfileUser(userID string) entity.User
}

type userConnection struct {
	connection *gorm.DB
}

//NewUserRepository is creates a new instance of UserRepository
func NewUserRepository(db *gorm.DB) UserRepository {
	return &userConnection{
		connection: db,
	}
}

func (db *userConnection) InsertUser(user entity.UserJoin) entity.UserJoin {
	user.Password = hashAndSalt([]byte(user.Password))
	db.connection.Save(&user)
	return user
}

func (db *userConnection) UpdateUser(user entity.UserJoin) entity.UserJoin {
	if user.Password != "" {
		user.Password = hashAndSalt([]byte(user.Password))
	} else {
		var tempUser entity.UserJoin
		db.connection.Find(&tempUser, user.UserID)
		user.Password = tempUser.Password
	}

	db.connection.Save(&user)
	return user
}

func (db *userConnection) VerifyCredential(username string, password string) interface{} {
	var user entity.UserJoin
	// res := db.connection.Where("user_name = ?", user_name).Take(&user)
	res := db.connection.Raw("SELECT users.user_id, users.user_name, users.password, users.comment, users.is_usable, users.create_user, users.create_date, users.update_user, users.update_date, employees.employee_name, employees.dept_id, employees.dept_name, employees.div_id, employees.div_name, employees.position, employees.address, employees.email, employees.telephone FROM users JOIN employees ON users.employee_id = employees.employee_id WHERE users.user_name = ?", username).Take(&user)
	if res.Error == nil {
		return user
	}
	return nil
}

func (db *userConnection) IsDuplicateUserName(username string) (tx *gorm.DB) {
	var user entity.UserJoin
	return db.connection.Where("user_name = ?", username).Take(&user)
}

func (db *userConnection) FindByUserName(username string) entity.UserJoin {
	var user entity.UserJoin
	db.connection.Where("user_name = ?", username).Take(&user)
	return user
}

func (db *userConnection) ProfileUser(userID string) entity.User {
	var user entity.User
	db.connection.Preload("Employees").Preload("Employees.User").Find(&user, userID)
	return user
}

func hashAndSalt(pwd []byte) string {
	hash, err := bcrypt.GenerateFromPassword(pwd, bcrypt.MinCost)
	if err != nil {
		log.Println(err)
		panic("Failed to hash a password")
	}
	return string(hash)
}
