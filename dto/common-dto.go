package dto

//CommonUpdateDTO is a model that client use when updating a common
type CommonUpdateDTO struct {
	CommonID   uint64 `json:"common_id" form:"common_id"`
	CommonType string `json:"common_type" form:"common_type" binding:"required"`
	Code       uint64 `json:"code" form:"code" binding:"required"`
	Alias      string `json:"alias" form:"alias" binding:"required"`
	Value      string `json:"value" form:"value" binding:"required"`
	IsDefault  string `json:"is_default" form:"is_default" binding:"required"`
	Comments   string `json:"comments" form:"comments" binding:"required"`
	IsUsable   string `json:"is_usable" form:"is_usable" binding:"required"`
	CreateUser uint64 `json:"create_user" form:"create_user"`
	CreateDate string `json:"create_date" form:"create_date"`
	UpdateUser uint64 `json:"update_user" form:"update_user"`
	UpdateDate string `json:"update_date" form:"update_date"`
}

//CommonCreateDTO is is a model that clinet use when create a new common
type CommonCreateDTO struct {
	CommonType string `json:"common_type" form:"common_type" binding:"required"`
	Code       uint64 `json:"code" form:"code" binding:"required"`
	Alias      string `json:"alias" form:"alias" binding:"required"`
	Value      string `json:"value" form:"value" binding:"required"`
	IsDefault  string `json:"is_default" form:"is_default" binding:"required"`
	Comments   string `json:"comments" form:"comments" binding:"required"`
	IsUsable   string `json:"is_usable" form:"is_usable" binding:"required"`
	CreateUser uint64 `json:"create_user" form:"create_user"`
	CreateDate string `json:"create_date" form:"create_date"`
	UpdateUser uint64 `json:"update_user" form:"update_user"`
	UpdateDate string `json:"update_date" form:"update_date"`
}
