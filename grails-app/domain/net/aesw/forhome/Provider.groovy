package net.aesw.forhome

class Provider {

	String name
	String phone
	String fax
	Address address
	
    static constraints = {
		name(blank: false)
		address(blank: false)
    }
	
	String toString() { "${name}" }
}
