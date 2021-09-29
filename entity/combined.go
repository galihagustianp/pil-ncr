package entity

//Combined struct represents commons table in database
type Combined struct {
	TicketID         uint64 `gorm:"type:int" json:"ticket_id"`
	TicketType       string `gorm:"type:varchar(255)" json:"ticket_type"`
	NoTicket         uint64 `gorm:"type:int" json:"no_ticket"`
	TypeNCR          string `gorm:"type:varchar(255)" json:"type_ncr"`
	Case             string `gorm:"type:varchar(255)" json:"case"`
	Description      string `gorm:"type:varchar(255)" json:"description"`
	SendTo           string `gorm:"type:text" json:"send_to"`
	ForwardDefault   string `gorm:"type:varchar(255)" json:"forward_default"`
	Verification     string `gorm:"type:varchar(255)" json:"verification"`
	SendNCR          string `gorm:"type:text" json:"send_ncr"`
	VerificationDate string `gorm:"type:varchar(255)" json:"verification_date"`
	CorrectiveAction string `gorm:"type:text" json:"corrective_action"`
	PreventiveAction string `gorm:"type:text" json:"preventive_action"`
	CapaUser         string `gorm:"type:varchar(255)" json:"capa_user"`
	CapaDate         string `gorm:"type:varchar(255)" json:"capa_date"`
	ValidationDate   string `gorm:"type:varchar(255)" json:"validation_date"`
	Status           string `gorm:"type:varchar(255)" json:"status"`
	Confirm          string `gorm:"type:varchar(255)" json:"confirm"`
	VerificationUser string `gorm:"type:varchar(255)" json:"verification_user"`
	Comment          string `gorm:"type:text" json:"comment"`
	IsUsable         string `gorm:"type:varchar(255)" json:"is_usable"`
	CreateUser       uint64 `gorm:"type:int" json:"create_user"`
	CreateDate       string `gorm:"type:varchar(255)" json:"create_date"`
	UpdateUser       uint64 `gorm:"type:int" json:"update_user"`
	UpdateDate       string `gorm:"type:varchar(255)" json:"update_date"`
	DeptName         string `gorm:"type:varchar(255)" json:"dept_name"`
	DivName          string `gorm:"type:varchar(255)" json:"div_name"`
	Position         string `gorm:"type:varchar(255)" json:"position"`
	TicketDetailID   uint64 `gorm:"primary_key:auto_increment" json:"ticket_detail_id"`
	ItemTicket       string `gorm:"type:varchar(255)" json:"item_ticket"`
	LotYarn          string `gorm:"type:varchar(255)" json:"lot_yarn"`
	SoLine           string `gorm:"type:varchar(255)" json:"so_line"`
	ColorYarn        string `gorm:"type:varchar(255)" json:"color_yarn"`
	TypeYarn         string `gorm:"type:varchar(255)" json:"type_yarn"`
	SupplierYarn     string `gorm:"type:text" json:"supplier_yarn"`
	SoSap            string `gorm:"type:varchar(255)" json:"so_sap"`
	SoPil            string `gorm:"type:varchar(255)" json:"so_pil"`
	Item             string `gorm:"type:varchar(255)" json:"item"`
	Process          string `gorm:"type:varchar(255)" json:"process"`
	Color            string `gorm:"type:varchar(255)" json:"color"`
	LOT              string `gorm:"type:varchar(255)" json:"lot"`
	Roll             string `gorm:"type:varchar(255)" json:"roll"`
	QTY              string `gorm:"type:varchar(255)" json:"qty"`
	// TicketDetails    TicketDetail `gorm:"foreignKey:TicketDetailID; ASSOCIATION_FOREIGNKEY:TicketDetailID; constraint:OnUpdate:CASCADE,OnDelete:CASCADE" json:"ticketdetail"`
}
