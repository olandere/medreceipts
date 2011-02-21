package net.aesw.forhome


class SummaryReportController {

    def index = { }
	
	//def scaffold = true
	
	//def search = {
		
	//}
	
	def results = {
    	def visits = Visit.executeQuery('from Visit v where year(v.dateOfVisit)=:year and v.entryComplete != true order by v.dateOfVisit', [year: Integer.valueOf(params.year)])
		
		def sumFsa = Visit.executeQuery('select sum(v.copay) from Visit v where year(v.dateOfVisit)=:year and v.paidWithFSA = true', [year: Integer.valueOf(params.year)])
		
		def sumNotFsa = Visit.executeQuery('select sum(v.copay) from Visit v where year(v.dateOfVisit)=:year and v.paidWithFSA != true', [year: Integer.valueOf(params.year)])
		
		return[visits : visits, sumFsa : sumFsa[0], sumNotFsa : sumNotFsa[0], year : params.year]
	}
}
