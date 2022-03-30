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
    @IBOutlet var imageView: UIImageView!
    
    // MARK: - Private Properties
    private let contact = Contact.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "logo_background")
        contactTitle.text = contact.title
        adressContact.text = contact.adress
    }
}

