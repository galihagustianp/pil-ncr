package dto

//UserUpdateDTO is used by client when PUT update profile
type UserUpdateDTO struct {
	// Email      string `json:"email" form:"email" binding:"required,email"`
	ID         uint64 `json:"id" form:"id"`
	UserName   string `json:"user_name" form:"user_name" binding:"required,user_name"`
	Password   string `json:"password,omitempty" form:"password,omitempty"`
	Comment    string `json:"comment" form:"comment"`
	IsUsable   string `json:"is_usable" form:"is_usable"`
	CreateUser uint64 `json:"create_user" form:"create_user"`
	CreateDate string `json:"create_date" form:"create_date"`
	UpdateUser uint64 `json:"update_user" form:"update_user"`
	UpdateDate string `json:"update_date" form:"update_date"`
}
