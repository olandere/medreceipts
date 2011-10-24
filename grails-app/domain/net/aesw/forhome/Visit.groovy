package net.aesw.forhome

class Visit {

	Date dateOfVisit
	Provider provider
	Person person
	Float copay
	Boolean paidWithHSA
	Boolean paidWithFSA
	Boolean countMilage
	Boolean entryComplete
	String note
	
    static constraints = {
		dateOfVisit(blank: false, unique:['provider','person','copay'])
		provider(blank: false)
		person(blank: false)
		copay(blank: false)
		paidWithHSA(nullable:false)
		paidWithFSA(nullable:false)
		paidWithFSA validator: {val, obj ->
			if (val && obj.properties['paidWithHSA']){ return ['visit.error.only.one.paid.flag.can.be.set']} }
    }
	
	String toString() { "On ${dateOfVisit}, ${person} visited ${provider}, paid ${copay}, HSA: ${paidWithHSA}, FSA: ${paidWithFSA}, complete: ${entryComplete}" }
}
