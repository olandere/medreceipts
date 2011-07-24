package net.aesw.forhome

class Visit {

	Date dateOfVisit
	Provider provider
	Person person
	Float copay
	Boolean paidWithFSA
	Boolean paidWithHSA
	Boolean countMilage
	Boolean entryComplete
	String note
	
    static constraints = {
		dateOfVisit(blank: false, unique:['provider','person','copay'])
		provider(blank: false)
		person(blank: false)
		copay(blank: false)
		paidWithFSA(nullable:false)
		paidWithFSA validator: {val, obj ->
			if (val && obj.properties['paidWithHSA']){ return ['visit.error.only.one.paid.flag.can.be.set']} }
		paidWithHSA(nullable:false)
    }
	
	String toString() { "On ${dateOfVisit}, ${person} visited ${provider}, paid ${copay}, FSA: ${paidWithFSA}, HSA: ${paidWithHSA}, complete: ${entryComplete}" }
}
