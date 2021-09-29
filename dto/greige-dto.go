package dto

type GreigeUpdateDTO struct {
	GreigeID         uint64 `json:"greige_id" form:"greige_id"`
	LocationID       uint64 `json:"location_id" form:"location_id" binding:"required"`
	GreigeNum        string `json:"greige_num" form:"greige_num" binding:"required"`
	GreigeBarcode    string `json:"greige_barcode" form:"greige_barcode" binding:"required"`
	CardCode         string `json:"card_code" form:"card_code" binding:"required"`
	CardName         string `json:"card_name" form:"card_name" binding:"required"`
	ItemCode         string `json:"item_code" form:"item_code" binding:"required"`
	ItemName         string `json:"item_name" form:"item_name" binding:"required"`
	ItemColour       string `json:"item_colour" form:"item_colour" binding:"required"`
	ItemProcess      string `json:"item_process" form:"item_process" binding:"required"`
	IsMakloon        string `json:"is_makloon" form:"is_makloon" binding:"required"`
	SoNum            uint64 `json:"so_num" form:"so_num" binding:"required"`
	SoLineNum        uint64 `json:"so_line_num" form:"so_line_num" binding:"required"`
	SoRefNum         string `json:"so_ref_num" form:"so_ref_num" binding:"required"`
	SoExpireTime     string `json:"so_expire_time" form:"so_expire_time" binding:"required"`
	PdoNum           uint64 `json:"pdo_num" form:"pdo_num" binding:"required"`
	PdoQty           uint64 `json:"pdo_qty" form:"pdo_qty" binding:"required"`
	PdoWeight        uint64 `json:"pdo_weight" form:"pdo_weight" binding:"required"`
	PdoTime          string `json:"pdo_time" form:"pdo_time" binding:"required"`
	PdoShift         uint64 `json:"pdo_shift" form:"pdo_shift" binding:"required"`
	PdoMachine       string `json:"pdo_machine" form:"pdo_machine" binding:"required"`
	PdoOperator      string `json:"pdo_operator" form:"pdo_operator" binding:"required"`
	QcTime           string `json:"qc_time" form:"qc_time" binding:"required"`
	QcOperator       string `json:"qc_operator" form:"qc_operator" binding:"required"`
	ScaleTime        string `json:"scale_time" form:"scale_time" binding:"required"`
	ScaleOperator    string `json:"scale_operator" form:"scale_operator" binding:"required"`
	WeightTypeCode   string `json:"weight_type_code" form:"weight_type_code" binding:"required"`
	WeightTypeName   string `json:"weight_type_name" form:"weight_type_name" binding:"required"`
	Bruto            uint64 `json:"bruto" form:"bruto" binding:"required"`
	BrutoRound       uint64 `json:"bruto_round" form:"bruto_round" binding:"required"`
	Netto            uint64 `json:"netto" form:"netto" binding:"required"`
	NettoRound       uint64 `json:"netto_round" form:"netto_round" binding:"required"`
	Weight           uint64 `json:"weight" form:"weight" binding:"required"`
	WeightRemain     uint64 `json:"weight_remain" form:"weight_remain" binding:"required"`
	Length           uint64 `json:"lenght" form:"lenght" binding:"required"`
	LengthRemain     uint64 `json:"lenght_remain" form:"lenght_remain" binding:"required"`
	GreigeStatusCode string `json:"greige_status_code" form:"greige_status_code" binding:"required"`
	GreigeStatusName string `json:"greige_status_name" form:"greige_status_name" binding:"required"`
	GreigeStatusTime string `json:"greige_status_time" form:"greige_status_time" binding:"required"`
	ArticleNum       string `json:"article_num" form:"article_num" binding:"required"`
	NumAtCard        string `json:"num_at_card" form:"num_at_card"`
	DocNumIso        string `json:"doc_num_iso" form:"doc_num_iso"`
	Comments         string `json:"comments" form:"comments"`
	IsUsable         string `json:"is_usable" form:"is_usable" binding:"required"`
	Create_Id        uint64 `json:"create_id" form:"create_id"`
	Create_Time      string `json:"create_time" form:"create_time" binding:"required"`
	Update_Id        uint64 `json:"update_id" form:"update_id"`
	Update_Time      string `json:"update_time" form:"update_time" binding:"required"`
	LabdippCode      string `json:"labdipp_code" form:"labdipp_code" binding:"required"`
	CardAddress      string `json:"card_address" form:"card_address" binding:"required"`
	SoNumBook        uint64 `json:"so_num_book" form:"so_num_book"`
	SoLineNumBook    uint64 `json:"so_line_num_book" form:"so_line_num_book"`
	SoRefNumBook     string `json:"so_ref_num_book" form:"so_ref_num_book"`
	SoExpireTimeBook string `json:"so_expire_time_book" form:"so_expire_time_book"`
	CardCodeBook     string `json:"card_code_book" form:"card_code_book"`
	CardNameBook     string `json:"card_name_book" form:"card_name_book"`
	NumAtCardBook    string `json:"num_at_book" form:"num_at_book"`
	ItemColourBook   string `json:"item_colour_book" form:"item_colour_book"`
	ItemProcessBook  string `json:"time_process_book" form:"time_process_book"`
	LabdippCodeBook  string `json:"labdip_code_book" form:"labdip_code_book"`
	CardAddressBook  string `json:"card_address_book" form:"card_address_book"`
}

type GreigeCreateDTO struct {
	LocationID       uint64 `json:"location_id" form:"location_id" binding:"required"`
	GreigeNum        string `json:"greige_num" form:"greige_num" binding:"required"`
	GreigeBarcode    string `json:"greige_barcode" form:"greige_barcode" binding:"required"`
	CardCode         string `json:"card_code" form:"card_code" binding:"required"`
	CardName         string `json:"card_name" form:"card_name" binding:"required"`
	ItemCode         string `json:"item_code" form:"item_code" binding:"required"`
	ItemName         string `json:"item_name" form:"item_name" binding:"required"`
	ItemColour       string `json:"item_colour" form:"item_colour" binding:"required"`
	ItemProcess      string `json:"item_process" form:"item_process" binding:"required"`
	IsMakloon        string `json:"is_makloon" form:"is_makloon" binding:"required"`
	SoNum            uint64 `json:"so_num" form:"so_num" binding:"required"`
	SoLineNum        uint64 `json:"so_line_num" form:"so_line_num" binding:"required"`
	SoRefNum         string `json:"so_ref_num" form:"so_ref_num" binding:"required"`
	SoExpireTime     string `json:"so_expire_time" form:"so_expire_time" binding:"required"`
	PdoNum           uint64 `json:"pdo_num" form:"pdo_num" binding:"required"`
	PdoQty           uint64 `json:"pdo_qty" form:"pdo_qty" binding:"required"`
	PdoWeight        uint64 `json:"pdo_weight" form:"pdo_weight" binding:"required"`
	PdoTime          string `json:"pdo_time" form:"pdo_time" binding:"required"`
	PdoShift         uint64 `json:"pdo_shift" form:"pdo_shift" binding:"required"`
	PdoMachine       string `json:"pdo_machine" form:"pdo_machine" binding:"required"`
	PdoOperator      string `json:"pdo_operator" form:"pdo_operator" binding:"required"`
	QcTime           string `json:"qc_time" form:"qc_time" binding:"required"`
	QcOperator       string `json:"qc_operator" form:"qc_operator" binding:"required"`
	ScaleTime        string `json:"scale_time" form:"scale_time" binding:"required"`
	ScaleOperator    string `json:"scale_operator" form:"scale_operator" binding:"required"`
	WeightTypeCode   string `json:"weight_type_code" form:"weight_type_code" binding:"required"`
	WeightTypeName   string `json:"weight_type_name" form:"weight_type_name" binding:"required"`
	Bruto            uint64 `json:"bruto" form:"bruto" binding:"required"`
	BrutoRound       uint64 `json:"bruto_round" form:"bruto_round" binding:"required"`
	Netto            uint64 `json:"netto" form:"netto" binding:"required"`
	NettoRound       uint64 `json:"netto_round" form:"netto_round" binding:"required"`
	Weight           uint64 `json:"weight" form:"weight" binding:"required"`
	WeightRemain     uint64 `json:"weight_remain" form:"weight_remain" binding:"required"`
	Length           uint64 `json:"lenght" form:"lenght" binding:"required"`
	LengthRemain     uint64 `json:"lenght_remain" form:"lenght_remain" binding:"required"`
	GreigeStatusCode string `json:"greige_status_code" form:"greige_status_code" binding:"required"`
	GreigeStatusName string `json:"greige_status_name" form:"greige_status_name" binding:"required"`
	GreigeStatusTime string `json:"greige_status_time" form:"greige_status_time" binding:"required"`
	ArticleNum       string `json:"article_num" form:"article_num" binding:"required"`
	NumAtCard        string `json:"num_at_card" form:"num_at_card"`
	DocNumIso        string `json:"doc_num_iso" form:"doc_num_iso"`
	Comments         string `json:"comments" form:"comments"`
	IsUsable         string `json:"is_usable" form:"is_usable" binding:"required"`
	Create_Id        uint64 `json:"create_id" form:"create_id"`
	Create_Time      string `json:"create_time" form:"create_time" binding:"required"`
	Update_Id        uint64 `json:"update_id" form:"update_id"`
	Update_Time      string `json:"update_time" form:"update_time" binding:"required"`
	LabdippCode      string `json:"labdipp_code" form:"labdipp_code" binding:"required"`
	CardAddress      string `json:"card_address" form:"card_address" binding:"required"`
	SoNumBook        uint64 `json:"so_num_book" form:"so_num_book"`
	SoLineNumBook    uint64 `json:"so_line_num_book" form:"so_line_num_book"`
	SoRefNumBook     string `json:"so_ref_num_book" form:"so_ref_num_book"`
	SoExpireTimeBook string `json:"so_expire_time_book" form:"so_expire_time_book"`
	CardCodeBook     string `json:"card_code_book" form:"card_code_book"`
	CardNameBook     string `json:"card_name_book" form:"card_name_book"`
	NumAtCardBook    string `json:"num_at_book" form:"num_at_book"`
	ItemColourBook   string `json:"item_colour_book" form:"item_colour_book"`
	ItemProcessBook  string `json:"time_process_book" form:"time_process_book"`
	LabdippCodeBook  string `json:"labdip_code_book" form:"labdip_code_book"`
	CardAddressBook  string `json:"card_address_book" form:"card_address_book"`
}
