//
//  ContainerTabBarViewController.swift
//  ContactList
//
//  Created by Андрей on 20.07.2022.
//

import UIKit

protocol PersonsViewController {
	var persons: [Person]! { get set }
}

class ContainerTabBarViewController: UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let persons = Person.getPersons()
		viewControllers?.forEach { viewController in
			if var controller = viewController as? PersonsViewController {
				controller.persons = persons
			}
		}
	}
	
}

