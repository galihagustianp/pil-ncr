package dto

//TicketUpdateDTO is a model that client use when updating a ticket
type TicketDetailUpdateDTO struct {
	TicketDetailID uint64 `json:"ticket_detail_id" form:"ticket_detail_id" binding:"required"`
	NoTicket       uint64 `json:"no_ticket" form:"no_ticket"`
	ItemTicket     string `json:"item_ticket" form:"item_ticket" binding:"required"`
	LotYarn        string `json:"lot_yarn" form:"lot_yarn" binding:"required"`
	ColorYarn      string `json:"color_yarn" form:"color_yarn" binding:"required"`
	TypeYarn       string `json:"type_yarn" form:"type_yarn" binding:"required"`
	SupplierYarn   string `json:"supplier_yarn" form:"supplier_yarn" binding:"required"`
	SoSap          string `json:"so_sap" form:"so_sap" binding:"required"`
	SoLine         string `json:"so_line" form:"so_line" binding:"required"`
	SoPil          string `json:"so_pil" form:"so_pil" binding:"required"`
	Item           string `json:"item" form:"item" binding:"required"`
	Process        string `json:"process" form:"process" binding:"required"`
	Color          string `json:"color" form:"color" binding:"required"`
	LOT            string `json:"lot" form:"lot" binding:"required"`
	Roll           string `json:"roll" form:"roll" binding:"required"`
	QTY            string `json:"qty" form:"qty" binding:"required"`
	TicketID       uint64 `json:"ticket_id" form:"ticket_id"`
	Comment        string `json:"comment" form:"comment"`
	IsUsable       string `json:"is_usable" form:"is_usable"`
	CreateUser     uint64 `json:"create_user" form:"create_user"`
	CreateDate     string `json:"create_date" form:"create_date"`
	UpdateUser     uint64 `json:"update_user" form:"update_user"`
	UpdateDate     string `json:"update_date" form:"update_date"`
}

//CommonCreateDTO is is a model that clinet use when create a new common
type TicketDetailCreateDTO struct {
	NoTicket     uint64 `json:"no_ticket" form:"no_ticket"`
	ItemTicket   string `json:"item_ticket" form:"item_ticket" binding:"required"`
	LotYarn      string `json:"lot_yarn" form:"lot_yarn" binding:"required"`
	ColorYarn    string `json:"color_yarn" form:"color_yarn" binding:"required"`
	TypeYarn     string `json:"type_yarn" form:"type_yarn" binding:"required"`
	SupplierYarn string `json:"supplier_yarn" form:"supplier_yarn" binding:"required"`
	SoSap        string `json:"so_sap" form:"so_sap" binding:"required"`
	SoLine       string `json:"so_line" form:"so_line" binding:"required"`
	SoPil        string `json:"so_pil" form:"so_pil" binding:"required"`
	Item         string `json:"item" form:"item" binding:"required"`
	Process      string `json:"process" form:"process" binding:"required"`
	Color        string `json:"color" form:"color" binding:"required"`
	LOT          string `json:"lot" form:"lot" binding:"required"`
	Roll         string `json:"roll" form:"roll" binding:"required"`
	QTY          string `json:"qty" form:"qty" binding:"required"`
	TicketID     uint64 `json:"ticket_id" form:"ticket_id"`
	Comment      string `json:"comment" form:"comment"`
	IsUsable     string `json:"is_usable" form:"is_usable"`
	CreateUser   uint64 `json:"create_user" form:"create_user"`
	CreateDate   string `json:"create_date" form:"create_date"`
	UpdateUser   uint64 `json:"update_user" form:"update_user"`
	UpdateDate   string `json:"update_date" form:"update_date"`
}
