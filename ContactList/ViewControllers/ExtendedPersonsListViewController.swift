//
//  AdvancedPersonsListViewController.swift
//  ContactList
//
//  Created by Андрей on 20.07.2022.
//

import UIKit

class ExtendedPersonsListViewController: UITableViewController, PersonsViewController {
	
	// MARK: - Public Properties
	var persons: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
		persons.count
    }
	
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		persons[section].fullName
	}

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "extendedContact", for: indexPath)
		var contentConfiguration = cell.defaultContentConfiguration()
		
		let person = persons[indexPath.section]
		
		contentConfiguration.image = UIImage(systemName: indexPath.row == 0 ? "phone" : "tray")
		contentConfiguration.text = indexPath.row == 0 ? person.phone : person.email
		cell.contentConfiguration = contentConfiguration

        return cell
    }
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
	}

}
