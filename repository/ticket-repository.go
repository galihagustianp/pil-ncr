package repository

import (
	"sipil_api/entity"

	"gorm.io/gorm"
)

//TicketRepository is a ....
type TicketRepository interface {
	InsertTicket(b entity.Ticket) entity.Ticket
	UpdateTicket(b entity.Ticket) entity.Ticket
	DeleteTicket(b entity.Ticket)
	AllTicket() []entity.Combined
	ByType(sType string) []entity.Combined
	ByStatus(sStatus string) []entity.Combined
	ByConform(sConform string) []entity.Combined
	ByTypeStatus(sType string, sStatus string, sDate string) []entity.Combined
	ByDept(sDept string) []entity.Combined
	ByDate(sFrom string, sTo string) []entity.Combined
	ByDeptStatus(sDept string, sStatus string) []entity.Combined
	ByDateType(sDate string, sType string, sItem string) []entity.Combined
	CountByStatus() []entity.Count
	FindTicketByID(ticketID uint64) entity.Combined
	ByTypeDate(sMonth string, sYear string) []entity.TypeDate
	ByDeptSend(sSend string, sStatus string) []entity.Combined
	ByTypeDateDept(sTypeDate string, sYear string, sDept string) []entity.TypeDate
	ByTypeDateUser(sDept string, sMonth string) []entity.TypeDateUser
	ByAll(dateFrom string, dateTo string, sType string, all_type string, all_item string, itemGreige string, itemYarn string, itemFabric string) []entity.Combined
	ReportDept(sDept string, dateFrom string, dateTo string, sType string, all_type string, all_item string, itemGreige string, itemYarn string, itemFabric string) []entity.Combined
	DashboardTypeCount(sDept string) []entity.Count
	ItemTicket(sItemTicket string) []entity.Combined
}

type ticketConnection struct {
	connection *gorm.DB
}

//NewTicketRepository creates an instance TicketRepository
func NewTicketRepository(dbConn *gorm.DB) TicketRepository {
	return &ticketConnection{
		connection: dbConn,
	}
}

func (db *ticketConnection) InsertTicket(b entity.Ticket) entity.Ticket {
	db.connection.Save(&b)
	db.connection.Preload("tickets").Find(&b)
	return b
}

func (db *ticketConnection) UpdateTicket(b entity.Ticket) entity.Ticket {
	db.connection.Save(&b)
	db.connection.Preload("tickets").Find(&b)
	return b
}

func (db *ticketConnection) DeleteTicket(b entity.Ticket) {
	db.connection.Delete(&b)
}

func (db *ticketConnection) FindTicketByID(ticketID uint64) entity.Combined {
	var ticket entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE tickets.ticket_id = ?", ticketID).Scan(&ticket)
	return ticket
}

func (db *ticketConnection) AllTicket() []entity.Combined {
	var tickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id ORDER BY tickets.ticket_id DESC").Scan(&tickets)
	return tickets
}

func (db *ticketConnection) ByType(sType string) []entity.Combined {
	var tickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE type_ncr = ?", sType).Scan(&tickets)
	return tickets
}

func (db *ticketConnection) ByStatus(sStatus string) []entity.Combined {
	var tickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE status = ?", sStatus).Scan(&tickets)
	return tickets
}

func (db *ticketConnection) ByConform(sConform string) []entity.Combined {
	var tickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE confirm = ?", sConform).Scan(&tickets)
	return tickets
}

func (db *ticketConnection) ByDept(sDept string) []entity.Combined {
	var jointickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE employees.div_name = ?", sDept).Scan(&jointickets)
	return jointickets
}

func (db *ticketConnection) ByDeptSend(sSend string, sStatus string) []entity.Combined {
	var jointickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE tickets.send_ncr = ? AND tickets.status = ? ", sSend, sStatus).Scan(&jointickets)
	return jointickets
}

func (db *ticketConnection) ByDeptStatus(sDept string, sStatus string) []entity.Combined {
	var jointickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr,  tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE (employees.div_name = ? OR tickets.send_ncr = ? ) AND tickets.status = ?", sDept, sDept, sStatus).Scan(&jointickets)
	return jointickets
}

func (db *ticketConnection) CountByStatus() []entity.Count {
	var counts []entity.Count
	db.connection.Raw("SELECT tickets.status, COUNT(status) AS count_ticket FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE YEAR(tickets.create_date) = YEAR(CURDATE()) GROUP BY status").Scan(&counts)
	return counts
}

func (db *ticketConnection) ByDate(sFrom string, sTo string) []entity.Combined {
	var tickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE DATE(tickets.create_date) >= ? AND DATE(tickets.create_date) <= ?", sFrom, sTo).Scan(&tickets)

	// tickets.create_date BETWEEN ? AND ?", sFrom, sTo).Scan(&tickets)
	return tickets
}

func (db *ticketConnection) ByTypeStatus(sType string, sStatus string, sDate string) []entity.Combined {
	var tickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE type_ncr = ?  AND tickets.status = ? AND DATE(tickets.create_date) = ?", sType, sStatus, sDate).Scan(&tickets)
	return tickets
}

func (db *ticketConnection) ByDateType(sDate string, sType string, sItem string) []entity.Combined {
	var tickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE tickets.create_date = ? AND type_ncr = ? AND ticket_details.item_ticket = ?", sDate, sType, sItem).Scan(&tickets)
	return tickets
}

func (db *ticketConnection) ByTypeDate(sMonth string, sYear string) []entity.TypeDate {
	var tickets []entity.TypeDate
	db.connection.Raw("SELECT type_ncr, create_date, COUNT(type_ncr) AS count_type FROM tickets WHERE MONTH(create_date) = ? AND YEAR(create_date) = ? GROUP BY type_ncr", sMonth, sYear).Scan(&tickets)
	return tickets
}

//month with dept_name
func (db *ticketConnection) ByTypeDateUser(sDept string, sMonth string) []entity.TypeDateUser {
	var tickets []entity.TypeDateUser
	db.connection.Raw("SELECT tickets.type_ncr, tickets.create_date, employees.div_name, COUNT(tickets.type_ncr) AS count_type FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE (tickets.send_ncr = employees.div_name OR employees.div_name = ? ) AND MONTH(tickets.create_date) = ? GROUP BY tickets.type_ncr", sDept, sMonth).Scan(&tickets)
	return tickets
}

func (db *ticketConnection) ByTypeDateDept(sTypeDate string, sYear string, sDept string) []entity.TypeDate {
	var tickets []entity.TypeDate
	db.connection.Raw("SELECT type_ncr, tickets.create_date, COUNT(type_ncr) AS count_type FROM tickets JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE MONTH(tickets.create_date) = ? AND YEAR(tickets.create_date) = ? AND (employees.div_name = ? OR tickets.send_ncr = ?) GROUP BY tickets.type_ncr", sTypeDate, sYear, sDept, sDept).Scan(&tickets)
	return tickets
}

func (db *ticketConnection) ByAll(dateFrom string, dateTo string, sType string, all_type string, all_item string, itemGreige string, itemYarn string, itemFabric string) []entity.Combined {
	var tickets []entity.Combined
	var queryMain = "SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE 1 = 1"
	var whereDate = " AND DATE(tickets.create_date) >= ? AND DATE(tickets.create_date) <= ?"
	// var whereDate = " AND tickets.create_date ? >= AND <= ?"
	var whereType = " AND type_ncr = ?"
	var final_query = ""
	final_query += queryMain
	final_query += whereDate
	if all_type != "Y" {
		final_query += whereType
	}
	if all_item != "Y" {
		final_query += " AND ticket_details.item_ticket in ("
		if itemGreige == "Y" {
			final_query += "'Greige',"
		}
		if itemYarn == "Y" {
			final_query += "'Yarn',"
		}
		if itemFabric == "Y" {
			final_query += "'Fabric',"
		}
		if last := len(final_query) - 1; last >= 0 && final_query[last] == ',' {
			final_query = final_query[:last]
		}
		final_query += ")"
	}
	db.connection.Raw(final_query, dateFrom, dateTo, sType).Scan(&tickets)

	return tickets
}

func (db *ticketConnection) DashboardTypeCount(sDept string) []entity.Count {
	var counts []entity.Count
	db.connection.Raw("SELECT tickets.status, COUNT(status) AS count_ticket FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE (employees.div_name = ? OR tickets.send_ncr = ?) AND YEAR(tickets.create_date) = YEAR(CURDATE()) GROUP BY status", sDept, sDept).Scan(&counts)
	return counts
}

func (db *ticketConnection) ItemTicket(sItemTicket string) []entity.Combined {
	var tickets []entity.Combined
	db.connection.Raw("SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE ticket_details.item_ticket = ?", sItemTicket).Scan(&tickets)
	return tickets
}

func (db *ticketConnection) ReportDept(sDept string, dateFrom string, dateTo string, sType string, all_type string, all_item string, itemGreige string, itemYarn string, itemFabric string) []entity.Combined {
	var tickets []entity.Combined
	var queryMain = "SELECT tickets.ticket_id, tickets.ticket_type, tickets.no_ticket, tickets.type_ncr, tickets.case, tickets.description, tickets.send_to, tickets.forward_default, tickets.verification, tickets.send_ncr, tickets.verification_date, tickets.corrective_action, tickets.preventive_action, tickets.capa_user, tickets.capa_date, tickets.validation_date, tickets.status, tickets.comment, tickets.confirm, tickets.is_usable, tickets.create_user, tickets.create_date, tickets.update_user, tickets.update_date, employees.dept_name, employees.div_name, employees.position, ticket_details.ticket_detail_id, ticket_details.item_ticket, ticket_details.lot_yarn, ticket_details.color_yarn, ticket_details.type_yarn, ticket_details.supplier_yarn, ticket_details.so_sap, ticket_details.so_line,ticket_details.so_pil, ticket_details.item, ticket_details.process, ticket_details.color, ticket_details.lot, ticket_details.roll, ticket_details.qty FROM tickets JOIN ticket_details ON tickets.ticket_id = ticket_details.ticket_id JOIN users ON tickets.create_user = users.user_id JOIN employees ON users.employee_id = employees.employee_id WHERE (employees.div_name = ? OR tickets.send_ncr = ? ) AND 1 = 1"
	var whereDate = " AND DATE(tickets.create_date) >= ? AND DATE(tickets.create_date) <= ?"
	var whereType = " AND type_ncr = ?"
	var final_query = ""
	final_query += queryMain
	final_query += whereDate
	if all_type != "Y" {
		final_query += whereType
	}
	if all_item != "Y" {
		final_query += " AND ticket_details.item_ticket in ("
		if itemGreige == "Y" {
			final_query += "'Greige',"
		}
		if itemYarn == "Y" {
			final_query += "'Yarn',"
		}
		if itemFabric == "Y" {
			final_query += "'Fabric',"
		}
		if last := len(final_query) - 1; last >= 0 && final_query[last] == ',' {
			final_query = final_query[:last]
		}
		final_query += ")"
	}
	db.connection.Raw(final_query, sDept, sDept, dateFrom, dateTo, sType).Scan(&tickets)

	return tickets
}
