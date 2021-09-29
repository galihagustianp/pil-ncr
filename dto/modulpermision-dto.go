package dto

//ModulPermisionUpdateDTO is a model that client use when updating a modul
type ModulPermisionUpdateDTO struct {
	ModulPermisionID uint64 `json:"modul_permision_id" form:"modul_permision_id" binding:"required"`
	UserGroupID      uint64 `json:"user_group_id" form:"modul_id" binding:"required"`
	UserGroup        string `json:"user_group" form:"modul_id" binding:"required"`
	ModulName        uint64 `json:"modul_name" form:"modul_name" binding:"required"`
	Comment          string `json:"comment" form:"comment"`
	IsUsable         string `json:"is_usable" form:"is_usable"`
	CreateUser       uint64 `json:"create_user" form:"create_user"`
	CreateDate       string `json:"create_date" form:"create_date"`
	UpdateUser       uint64 `json:"update_user" form:"update_user"`
	UpdateDate       string `json:"update_date" form:"update_date"`
}

//ModulPermisionCreateDTO is is a model that clinet use when create a new modul
type ModulPermisionCreateDTO struct {
	UserGroupID uint64 `json:"user_group_id" form:"user_group_id" binding:"required"`
	UserGroup   string `json:"user_group" form:"user_group" binding:"required"`
	ModulID     uint64 `json:"modul_id" form:"modul_id" binding:"required"`
	ModulName   string `json:"modul_name" form:"modul_name" binding:"required"`
	Comment     string `json:"comment" form:"comment"`
	IsUsable    string `json:"is_usable" form:"is_usable"`
	CreateUser  uint64 `json:"create_user" form:"create_user"`
	CreateDate  string `json:"create_date" form:"create_date"`
	UpdateUser  uint64 `json:"update_user" form:"update_user"`
	UpdateDate  string `json:"update_date" form:"update_date"`
}
