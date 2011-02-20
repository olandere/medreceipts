package net.aesw.forhome

class Person {

	String name
	Address address
	
    static constraints = {
		name(blank: false)
		address(blank: false)
    }
	
	String toString() { "${name}" }
}
