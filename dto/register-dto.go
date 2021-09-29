package dto

//RegisterDTO is used when client post from /register url
type RegisterDTO struct {
	UserName string `json:"user_name" form:"user_name" binding:"required,user_name" `
	Password string `json:"password" form:"password" binding:"required"`
}
