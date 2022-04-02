//
//  InfoViewController.swift
//  UnitedMusicApp
//
//  Created by Alexandr Barabash on 02.04.2022.
//

import UIKit

protocol OrderViewControllerDelegate {
    func getPersonalInfo(name: String, email: String, phone: String)
}

class InfoViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var personInfoLabel: UILabel!
    @IBOutlet var understandably: UIButton!
    
    // MARK: - Private Properties
    private var personName: String!
    private var personEmail: String!
    private var personPhone: String!
    
    // MARK: - View Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personInfoLabel.layer.cornerRadius = 10
        personInfoLabel.layer.masksToBounds = true
        understandably.layer.cornerRadius = 10
        
        personInfoLabel.text = """
        Уважаемый \(personName ?? "")!
        В ближайшее время мы с вами свяжемся по указанным Вами контактам \(personEmail ?? "") или \(personPhone ?? "").
        Спасибо за заказ!
        """
    }
}

// MARK: - OrderViewControllerDelegate
extension InfoViewController: OrderViewControllerDelegate {
    func getPersonalInfo(name: String, email: String, phone: String) {
        personName = name
        personEmail = email
        personPhone = phone
    }
}
