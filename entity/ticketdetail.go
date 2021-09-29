package entity

//Common struct represents commons table in database
type TicketDetail struct {
	TicketDetailID uint64 `gorm:"primary_key:auto_increment" json:"ticket_detail_id"`
	TicketID       uint64 `gorm:"type:int" json:"ticket_id"`
	NoTicket       uint64 `gorm:"type:int" json:"no_ticket"`
	ItemTicket     string `gorm:"type:varchar(255)" json:"item_ticket" binding:"required"`
	LotYarn        string `gorm:"type:varchar(255)" json:"lot_yarn" binding:"required"`
	ColorYarn      string `gorm:"type:varchar(255)" json:"color_yarn" binding:"required"`
	TypeYarn       string `gorm:"type:varchar(255)" json:"type_yarn" binding:"required"`
	SupplierYarn   string `gorm:"type:varchar(255)" json:"supplier_yarn" binding:"required"`
	SoSap          string `gorm:"type:varchar(255)" json:"so_sap" binding:"required"`
	SoLine         string `gorm:"type:varchar(255)" json:"so_line" binding:"required"`
	SoPil          string `gorm:"type:varchar(255)" json:"so_pil" binding:"required"`
	Item           string `gorm:"type:varchar(255)" json:"item" binding:"required"`
	Process        string `gorm:"type:varchar(255)" json:"process" binding:"required"`
	Color          string `gorm:"type:varchar(255)" json:"color" binding:"required"`
	LOT            string `gorm:"type:varchar(255)" json:"lot" binding:"required"`
	Roll           string `gorm:"type:varchar(255)" json:"roll" binding:"required"`
	QTY            string `gorm:"type:varchar(255)" json:"qty" binding:"required"`
	Comment        string `gorm:"type:varchar(255)" json:"comment"`
	IsUsable       string `gorm:"type:varchar(255)" json:"is_usable"`
	CreateUser     uint64 `gorm:"type:int" json:"create_user"`
	CreateDate     string `gorm:"type:varchar(255)" json:"create_date"`
	UpdateUser     uint64 `gorm:"type:int" json:"update_user"`
	UpdateDate     string `gorm:"type:varchar(255)" json:"update_date"`
	Tickets        Ticket `gorm:"foreignKey:TicketID; ASSOCIATION_FOREIGNKEY:TicketID; constraint:OnUpdate:CASCADE,OnDelete:CASCADE" json:"ticket"`
}
