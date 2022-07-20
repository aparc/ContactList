//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Андрей on 19.07.2022.
//

import UIKit

class PersonsListViewController: UITableViewController, PersonsViewController {
	
	// MARK: - Public Properties
	var persons: [Person]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
		var contentConfiguration = cell.defaultContentConfiguration()
		contentConfiguration.text = persons[indexPath.row].fullName
		cell.contentConfiguration = contentConfiguration

        return cell
    }
  
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
		guard let indexPath = tableView.indexPathForSelectedRow else { return }
		
		contactDetailsVC.person = persons[indexPath.row]
    }

}
