package entity

//Modul struct represents moduls table in database
type Modul struct {
	ModulID    uint64 `gorm:"primary_key:auto_increment;uniqueIndex;" json:"modul_id"`
	ModulName  string `gorm:"type:varchar(255)" json:"modul_name"`
	Comment    string `gorm:"type:text" json:"comment"`
	IsUsable   string `gorm:"type:varchar(255)" json:"is_usable"`
	CreateUser uint64 `gorm:"type:int" json:"create_user"`
	CreateDate string `gorm:"type:varchar(255)" json:"create_date"`
	UpdateUser uint64 `gorm:"type:int" json:"update_user"`
	UpdateDate string `gorm:"type:varchar(255)" json:"update_date"`
}
