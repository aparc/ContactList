//
//  Person.swift
//  ContactList
//
//  Created by Андрей on 20.07.2022.
//

import Foundation

struct Person {
	
	let firstName: String
	let surname: String
	let email: String
	let phone: String
	
	var fullName: String {
		"\(firstName) \(surname)"
	}
	
	static func getPersons() -> [Person] {
		var persons: [Person] = []
		let dataStore = DataStore()
		
		let names = dataStore.names.shuffled()
		let surnames = dataStore.surnames.shuffled()
		let emails = dataStore.emails.shuffled()
		let phones = dataStore.phones.shuffled()
		
		for index in names.indices {
			let person = Person(
				firstName: names[index],
				surname: surnames[index],
				email: emails[index],
				phone: phones[index]
			)
			persons.append(person)
		}
	    
		return persons
	}
	
}
