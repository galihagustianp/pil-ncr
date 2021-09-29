package entity

type TypeDateUser struct {
	TypeNCR    string `gorm:"type:varchar(255)" json:"type_ncr"`
	CreateDate string `gorm:"type:varchar(255)" json:"create_date"`
	DivName    string `gorm:"type:varchar(255)" json:"div_name"`
	CountType  int    `gorm:"type:int" json:"count_type"`
}
