//
//  ContactViewController.swift
//  UnitedMusicApp
//
//  Created by Aleksandr Rybachev on 27.03.2022.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet var contactTitle: UILabel!
    @IBOutlet var adressContact: UILabel!
    
    let contact = Contact.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTitle.text = contact.title
        adressContact.text = contact.adress
    }
}

