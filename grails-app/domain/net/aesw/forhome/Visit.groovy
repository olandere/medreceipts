package net.aesw.forhome

class Visit {

	Date dateOfVisit
	Provider provider
	Person person
	Float copay
	Boolean paidWithFSA
	Boolean countMilage
	Boolean entryComplete
	
    static constraints = {
		dateOfVisit(blank: false, unique:['provider','person','copay'])
		provider(blank: false)
		person(blank: false)
    }
	
	String toString() { "On ${dateOfVisit}, ${person} visited ${provider}, paid ${copay}" }
}
