package dto

//TicketUpdateDTO is a model that client use when updating a ticket
type TicketUpdateDTO struct {
	TicketID         uint64 `json:"ticket_id" form:"ticket_id"`
	TicketType       string `json:"ticket_type" form:"ticket_type" binding:"required"`
	NoTicket         uint64 `json:"no_ticket" form:"no_ticket" binding:"required"`
	TypeNCR          string `json:"type_ncr" form:"type_ncr" binding:"required"`
	Case             string `json:"case" form:"case" binding:"required"`
	Description      string `json:"description" form:"description" binding:"required"`
	SendTo           string `json:"send_to" form:"send_to" binding:"required"`
	ForwardDefault   string `json:"forward_default" form:"forward_default" binding:"required"`
	Verification     string `json:"verification" form:"verification" binding:"required"`
	SendNCR          string `json:"send_ncr" form:"send_ncr" binding:"required"`
	VerificationDate string `json:"verification_date" form:"verification_date"`
	CorrectiveAction string `json:"corrective_action" form:"corrective_action" binding:"required"`
	PreventiveAction string `json:"preventive_action" form:"preventive_action" binding:"required"`
	CapaUser         string `json:"capa_user" form:"capa_user"`
	CapaDate         string `json:"capa_date" form:"capa_date"`
	ValidationDate   string `json:"validation_date" form:"validation_date"`
	Status           string `json:"status" form:"status" binding:"required"`
	Confirm          string `json:"confirm" form:"confirm"`
	VerificationUser string `json:"verification_user" form:"verification_user"`
	Comment          string `json:"comment" form:"comment"`
	IsUsable         string `json:"is_usable" form:"is_usable"`
	CreateUser       uint64 `json:"create_user" form:"create_user"`
	CreateDate       string `json:"create_date" form:"create_date"`
	UpdateUser       uint64 `json:"update_user" form:"update_user"`
	UpdateDate       string `json:"update_date" form:"update_date"`
}

//CommonCreateDTO is is a model that clinet use when create a new common
type TicketCreateDTO struct {
	TicketType       string `json:"ticket_type" form:"ticket_type" binding:"required"`
	NoTicket         uint64 `json:"no_ticket" form:"no_ticket" binding:"required"`
	TypeNCR          string `json:"type_ncr" form:"type_ncr" binding:"required"`
	Case             string `json:"case" form:"case" binding:"required"`
	Description      string `json:"description" form:"description" binding:"required"`
	SendTo           string `json:"send_to" form:"send_to" binding:"required"`
	ForwardDefault   string `json:"forward_default" form:"forward_default" binding:"required"`
	Verification     string `json:"verification" form:"verification" binding:"required"`
	SendNCR          string `json:"send_ncr" form:"send_ncr" binding:"required"`
	VerificationDate string `json:"verification_date" form:"verification_date"`
	CorrectiveAction string `json:"corrective_action" form:"corrective_action" binding:"required"`
	PreventiveAction string `json:"preventive_action" form:"preventive_action" binding:"required"`
	CapaUser         string `json:"capa_user" form:"capa_user"`
	CapaDate         string `json:"capa_date" form:"capa_date"`
	ValidationDate   string `json:"validation_date" form:"validation_date"`
	Status           string `json:"status" form:"status" binding:"required"`
	Confirm          string `json:"confirm" form:"confirm"`
	VerificationUser string `json:"verification_user" form:"verification_user"`
	Comment          string `json:"comment" form:"comment"`
	IsUsable         string `json:"is_usable" form:"is_usable"`
	CreateUser       uint64 `json:"create_user" form:"create_user"`
	CreateDate       string `json:"create_date" form:"create_date"`
	UpdateUser       uint64 `json:"update_user" form:"update_user"`
	UpdateDate       string `json:"update_date" form:"update_date"`
}
