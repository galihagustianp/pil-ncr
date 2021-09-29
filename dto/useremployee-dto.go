package dto

//UserEmployeeUpdateDTO is a model that client use when updating a modul
type UserEmployeeUpdateDTO struct {
	UserEmployeeID uint64 `json:"user_employee_id" form:"user_employee_id"`
	UserGroupID    uint64 `json:"user_group_id" form:"user_group_id" binding:"required"`
	EmployeeName   string `json:"employee_name" form:"employee_name" binding:"required"`
	UserGroup      string `json:"user_group" form:"user_group" binding:"required"`
	Comments       string `json:"comment" form:"comment"`
	IsUsable       uint64 `json:"is_usable" form:"create_user"`
	CreateUser     uint64 `json:"create_user" form:"create_user"`
	CreateDate     string `json:"create_date" form:"create_date"`
	UpdateUser     uint64 `json:"update_user" form:"update_user"`
	UpdateDate     string `json:"update_date" form:"update_date"`
}

//UserEmployeeCreateDTO is is a model that clinet use when create a new modul
type UserEmployeeCreateDTO struct {
	UserGroupID  uint64 `json:"user_group_id" form:"user_group_id" binding:"required"`
	EmployeeName string `json:"employee_name" form:"employee_name" binding:"required"`
	UserGroup    string `json:"user_group" form:"user_group" binding:"required"`
	Comment      string `json:"comment" form:"comment"`
	IsUsable     string `json:"is_usable" form:"is_usable"`
	CreateUser   uint64 `json:"create_user" form:"create_user"`
	CreateDate   string `json:"create_date" form:"create_date"`
	UpdateUser   uint64 `json:"update_user" form:"update_user"`
	UpdateDate   string `json:"update_date" form:"update_date"`
}
