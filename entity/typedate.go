package entity

type TypeDate struct {
	TypeNCR    string `gorm:"type:varchar(255)" json:"type_ncr"`
	CreateDate string `gorm:"type:varchar(255)" json:"create_date"`
	CountType  int    `gorm:"type:int" json:"count_type"`
}
