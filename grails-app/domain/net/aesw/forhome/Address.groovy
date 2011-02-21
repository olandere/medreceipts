package net.aesw.forhome

class Address {

	String address1
	String address2
	String city
	String usstate
	Integer zip
	Float miles
	
    static constraints = {
		address1(blank: false)
		city(blank: false)
		usstate(blank: false)
		zip(blank: false)
    }
	
	String toString() { "${address1}, ${city}, ${usstate}  ${zip}" }

}
