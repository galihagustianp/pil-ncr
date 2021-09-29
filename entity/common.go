package entity

//Common struct represents commons table in database
type Common struct {
	CommonID   uint64 `gorm:"primary_key:auto_increment" json:"common_id"`
	CommonType string `gorm:"type:varchar(255)" json:"common_type"`
	Code       uint64 `gorm:"type:int" json:"code"`
	Alias      string `gorm:"type:varchar(255)" json:"alias"`
	Value      string `gorm:"type:varchar(255)" json:"value"`
	IsDefault  string `gorm:"type:char(1)" json:"is_default"`
	Comments   string `gorm:"type:varchar(255)" json:"comments"`
	IsUsable   string `gorm:"type:varchar(255)" json:"is_usable"`
	CreateUser uint64 `gorm:"type:varchar(255)" json:"create_user"`
	CreateDate string `gorm:"type:varchar(255)"  json:"create_date"`
	UpdateUser uint64 `gorm:"type:varchar(255)" json:"update_user"`
	UpdateDate string `gorm:"type:varchar(255)"  json:"update_date"`
}
