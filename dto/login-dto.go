package dto

//LoginDTO is a model that used by client when POST from /login url
type LoginDTO struct {
	UserName string `json:"username" form:"username" binding:"required"`
	Password string `json:"password" form:"password" binding:"required"`
}
