//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Андрей on 20.07.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

	// MARK: - IB Outlets
	@IBOutlet var phonelabel: UILabel!
	@IBOutlet var emailLabel: UILabel!
	
	// MARK: - Public Properties
	var person: Person!
	
	// MARK: - Life Cycle Methods
	override func viewDidLoad() {
        super.viewDidLoad()
		
		title = person.fullName
		phonelabel.text = "Phone: \(person.phone)"
		emailLabel.text = "Email: \(person.email)"
    }

}
