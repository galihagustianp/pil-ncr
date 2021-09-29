package dto

//ModulUpdateDTO is a model that client use when updating a modul
type ModulUpdateDTO struct {
	ModulID    uint64 `json:"MODUL_ID" form:"modul_id"`
	ModulName  string `json:"MODUL_NAME" form:"modul_type" binding:"required"`
	Comment    string `json:"comment" form:"comment"`
	IsUsable   string `json:"is_usable" form:"is_usable"`
	CreateUser uint64 `json:"create_user" form:"create_user"`
	CreateDate string `json:"create_date" form:"create_date"`
	UpdateUser uint64 `json:"update_user" form:"update_user"`
	UpdateDate string `json:"update_date" form:"update_date"`
	UserID     uint64 `json:"user_id,omitempty"  form:"user_id,omitempty"`
}

//ModulCreateDTO is is a model that clinet use when create a new modul
type ModulCreateDTO struct {
	ModulName  string `json:"MODUL_NAME" form:"modul_type" binding:"required"`
	Comment    string `json:"comment" form:"comment"`
	IsUsable   string `json:"is_usable" form:"is_usable"`
	CreateUser uint64 `json:"create_user" form:"create_user"`
	CreateDate string `json:"create_date" form:"create_date"`
	UpdateUser uint64 `json:"update_user" form:"update_user"`
	UpdateDate string `json:"update_date" form:"update_date"`
	UserID     uint64 `json:"user_id,omitempty"  form:"user_id,omitempty"`
}
