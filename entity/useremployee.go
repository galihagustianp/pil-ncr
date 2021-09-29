package entity

//UserEmployee struct represents moduls table in database
type UserEmployee struct {
	UserEmployeeID uint64 `gorm:"primary_key:auto_increment" json:"user_employee_id"`
	UserGroupID    uint64 `gorm:"type:int" json:"user_group_id"`
	EmployeeName   string `gorm:"type:varchar(255)" json:"employee_name"`
	UserGroup      string `gorm:"type:varchar(255)" json:"user_group"`
	Comment        string `gorm:"type:text" json:"comment"`
	IsUsable       string `gorm:"type:varchar(255)" json:"is_status"`
	CreateUser     uint64 `gorm:"type:int" json:"create_user"`
	CreateDate     string `gorm:"type:varchar(255)" json:"create_date"`
	UpdateUser     uint64 `gorm:"type:int" json:"update_user"`
	UpdateDate     string `gorm:"type:varchar(255)" json:"update_date"`
}
