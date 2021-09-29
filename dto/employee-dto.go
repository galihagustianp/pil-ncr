package dto

//EmployeeUpdateDTO is a model that client use when updating a employee
type EmployeeUpdateDTO struct {
	EmployeeID   uint64 `json:"employee_id" form:"employee_id"`
	EmployeeName string `json:"employee_name" form:"employee_name" binding:"required"`
	DeptID       string `json:"dept_id" form:"dept_id" binding:"required"`
	DeptName     string `json:"dept_name" form:"dept_name" binding:"required"`
	DivID        string `json:"div_id" form:"div_id" binding:"required"`
	DivName      string `json:"div_name" form:"div_name" binding:"required"`
	Position     string `json:"position" form:"position" binding:"required"`
	Address      string `json:"address" form:"address" binding:"required"`
	Email        string `json:"email" form:"email" binding:"required"`
	Telephone    string `json:"telephone" form:"telephone" binding:"required"`
	Comment      string `json:"comment" form:"comment"`
	IsUsable     string `json:"is_usable" form:"is_usable"`
	CreateUser   uint64 `json:"create_user" form:"create_user"`
	CreateDate   string `json:"create_date" form:"create_date"`
	UpdateUser   uint64 `json:"update_user" form:"update_user"`
	UpdateDate   string `json:"update_date" form:"update_date"`
}

//EmployeeCreateDTO is is a model that clinet use when create a new employee
type EmployeeCreateDTO struct {
	EmployeeName string `json:"employee_name" form:"employee_name" binding:"required"`
	DeptID       string `json:"dept_id" form:"dept_id" binding:"required"`
	DeptName     string `json:"dept_name" form:"dept_name" binding:"required"`
	DivID        string `json:"div_id" form:"div_id" binding:"required"`
	DivName      string `json:"div_name" form:"div_name" binding:"required"`
	Position     string `json:"position" form:"position" binding:"required"`
	Address      string `json:"address" form:"address" binding:"required"`
	Email        string `json:"email" form:"email" binding:"required"`
	Telephone    string `json:"telephone" form:"telephone" binding:"required"`
	Comment      string `json:"comment" form:"comment"`
	IsUsable     string `json:"is_usable" form:"is_usable"`
	CreateUser   uint64 `json:"create_user" form:"create_user"`
	CreateDate   string `json:"create_date" form:"create_date"`
	UpdateUser   uint64 `json:"update_user" form:"update_user"`
	UpdateDate   string `json:"update_date" form:"update_date"`
}
