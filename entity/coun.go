package entity

type Count struct {
	Status      string `gorm:"type:varchar(255)" json:"status"`
	CountTicket int    `gorm:"type:int" json:"count_ticket"`
}
