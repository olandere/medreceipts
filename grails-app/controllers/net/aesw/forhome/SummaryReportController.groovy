package net.aesw.forhome


class SummaryReportController {

    def index = { }
	
	//def scaffold = Visit
	
	//def search = {
		
	//}
	
	def results = {
    	def visits = Visit.executeQuery('from Visit v where year(v.dateOfVisit)=:year and v.entryComplete != true order by v.dateOfVisit', [year: Integer.valueOf(params.year)])
		
		def sumFsa = Visit.executeQuery('select sum(v.copay) from Visit v where year(v.dateOfVisit)=:year and v.paidWithFSA = true', [year: Integer.valueOf(params.year)])
		
		def sumHsa = Visit.executeQuery('select sum(v.copay) from Visit v where year(v.dateOfVisit)=:year and v.paidWithHSA = true', [year: Integer.valueOf(params.year)])
		
		def sumOnUs = Visit.executeQuery('select sum(v.copay) from Visit v where year(v.dateOfVisit)=:year and (v.paidWithFSA is null or v.paidWithFSA = false) and (v.paidWithHSA is null or v.paidWithHSA = false)', [year: Integer.valueOf(params.year)])
		
		def miles = Visit.executeQuery('select sum(v.provider.address.miles) from Visit v where year(v.dateOfVisit)=:year and v.countMilage = true', [year: Integer.valueOf(params.year)])
		
		return[visits : visits, sumFsa : sumFsa?.get(0), sumHsa : sumHsa?.get(0), sumOnUs : sumOnUs?.get(0), miles : miles?.get(0) * 2, year : params.year]
	}
}
