//
//  PersonDetailsViewController.swift
//  Lesson 2.11 ContactList
//
//  Created by Valentin on 27.02.2024.
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fio
        phoneNumberLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
