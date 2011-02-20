package net.aesw.forhome


class SummaryReportController {

    def index = { }
	
	//def scaffold = true
	
	//def search = {
		
	//}
	
	def results = {
    	def visits = Visit.executeQuery('from Visit v where year(v.dateOfVisit)=:year order by v.dateOfVisit', [year: Integer.valueOf(params.year)])
		return[visits : visits, year : params.year]
	}
}
