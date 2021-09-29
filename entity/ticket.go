package entity

//Ticket struct represents tickets table in database
type Ticket struct {
	TicketID         uint64 `gorm:"primary_key:auto_increment" json:"ticket_id"`
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
	// TicketDetails    TicketDetail `gorm:"foreignKey:TicketDetailID; ASSOCIATION_FOREIGNKEY:TicketDetailID; constraint:OnUpdate:CASCADE,OnDelete:CASCADE" json:"ticketdetail"`
}
