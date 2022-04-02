//
//  TeamViewController.swift
//  UnitedMusicApp
//
//  Created by Alexandr Barabash on 02.04.2022.
//

import UIKit

class TeamViewController: UIViewController {

    @IBOutlet var teamLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teamLabel.text = """
        Александр Рыбачев
        Александр Барабаш
        """

    }
    


}
