package entity

//Employee struct represents employees table in database
type Employee struct {
	EmployeeID   uint64 `gorm:"primary_key:auto_increment" json:"employee_id"`
	EmployeeName string `gorm:"type:varchar(255)" json:"employee_name"`
	DeptID       string `gorm:"type:varchar(255)" json:"dept_id"`
	DeptName     string `gorm:"type:varchar(255)" json:"dept_name"`
	DivID        string `gorm:"type:varchar(255)" json:"div_id"`
	DivName      string `gorm:"type:varchar(255)" json:"div_name"`
	Position     string `gorm:"type:varchar(255)" json:"position"`
	Address      string `gorm:"type:varchar(255)" json:"address"`
	Email        string `gorm:"type:varchar(255)" json:"email"`
	Telephone    string `gorm:"type:varchar(255)" json:"telephone"`
	Comment      string `gorm:"type:text" json:"comment"`
	IsUsable     string `gorm:"type:varchar(255)" json:"is_usable"`
	CreateUser   uint64 `gorm:"type:int" json:"create_user"`
	CreateDate   string `gorm:"type:varchar(255)" json:"create_date"`
	UpdateUser   uint64 `gorm:"type:int" json:"update_user"`
	UpdateDate   string `gorm:"type:varchar(255)" json:"update_date"`
}
