package entity

//Modul struct represents moduls table in database
type ModulPermision struct {
	ModulPermisionID uint64 `gorm:"primary_key:auto_increment" json:"modul_permision_id"`
	UserGroupID      uint64 `gorm:"type:int" json:"user_group_id"`
	UserGroup        string `gorm:"type:varchar(255)" json:"user_group"`
	ModulID          uint64 `gorm:"not null" json:"-"`
	ModulName        string `gorm:"type:varchar(255)" json:"modul_name"`
	Comment          string `gorm:"type:text" json:"comment"`
	IsUsable         string `gorm:"type:varchar(255)" json:"is_usable"`
	CreateUser       uint64 `gorm:"type:int" json:"create_user"`
	CreateDate       string `gorm:"type:varchar(255)" json:"create_date"`
	UpdateUser       uint64 `gorm:"type:int" json:"update_user"`
	UpdateDate       string `gorm:"type:varchar(255)" json:"update_date"`
	Moduls           Modul  `gorm:"foreignKey:ModulID; ASSOCIATION_FOREIGNKEY:ModulID; constraint:OnUpdate:CASCADE,OnDelete:CASCADE" json:"modul"`
}
