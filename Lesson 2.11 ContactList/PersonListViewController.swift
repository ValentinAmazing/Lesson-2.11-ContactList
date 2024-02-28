//
//  ViewController.swift
//  Lesson 2.11 ContactList
//
//  Created by Valentin on 27.02.2024.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    private var personList = Person.getPersonList()

    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.navigationItem.title = personList[indexPath.row].fio
        detailsVC?.person = personList[indexPath.row]
    }
}

//MARK: - UITableViewDataSource
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fio
        
        cell.contentConfiguration = content
        
        return cell
    }
   
}

