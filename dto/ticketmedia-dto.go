package dto

type TicketMediaUpdateDTO struct {
	Media_Id    uint64 `gorm:"primary_key:auto_increment" json:"media_id" binding:"required"`
	Media_Name  string `gorm:"type:varchar(255)" json:"media_name"`
	Media_File  string `gorm:"type:varchar(255)" json:"media_file"`
	Media_Size  uint64 `gorm:"type:int" json:"media_size"`
	Comment     string `gorm:"type:varchar(255)" json:"comment"`
	Is_Usable   string `gorm:"type:varchar(255)" json:"is_usable"`
	Create_User uint64 `gorm:"type:int" json:"create_user"`
	Create_Date string `gorm:"type:varchar(255)" json:"create_date"`
	Update_User uint64 `gorm:"type:int" json:"update_user"`
	Update_Date string `gorm:"type:varchar(255)" json:"update_date"`
	TicketID    uint64 `gorm:"type:int" json:"ticket_id"`
}

type TicketMediaCreateDTO struct {
	Media_Name  string `gorm:"type:varchar(255)" json:"media_name"`
	Media_File  string `gorm:"type:varchar(255)" json:"media_file"`
	Media_Size  uint64 `gorm:"type:int" json:"media_size"`
	Comment     string `gorm:"type:varchar(255)" json:"comment"`
	Is_Usable   string `gorm:"type:varchar(255)" json:"is_usable"`
	Create_User uint64 `gorm:"type:int" json:"create_user"`
	Create_Date string `gorm:"type:varchar(255)" json:"create_date"`
	Update_User uint64 `gorm:"type:int" json:"update_user"`
	Update_Date string `gorm:"type:varchar(255)" json:"update_date"`
	TicketID    uint64 `gorm:"type:int" json:"ticket_id"`
}
