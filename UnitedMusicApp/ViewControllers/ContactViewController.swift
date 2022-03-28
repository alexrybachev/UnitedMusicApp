//
//  ContactViewController.swift
//  UnitedMusicApp
//
//  Created by Aleksandr Rybachev on 27.03.2022.
//

import UIKit

class ContactViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var contactTitle: UILabel!
    @IBOutlet var adressContact: UILabel!
    
    // MARK: - Private Properties
    private let contact = Contact.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTitle.text = contact.title
        adressContact.text = contact.adress
    }
}

