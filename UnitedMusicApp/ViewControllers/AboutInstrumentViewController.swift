//
//  AboutInstrumentViewController.swift
//  UnitedMusicApp
//
//  Created by Aleksandr Rybachev on 28.03.2022.
//

import UIKit

class AboutInstrumentViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var instrumentCost: UILabel!
    @IBOutlet var instrumentImage: UIImageView!
    @IBOutlet var instrumentTitle: UILabel!
    @IBOutlet var instrumentDescription: UILabel!
    
    // MARK: = Properties
    var instrument: Instrument!

    override func viewDidLoad() {
        super.viewDidLoad()

        instrumentImage.image = UIImage(named: instrument.image)
        instrumentCost.text = "\(instrument.cost) ₽"
        instrumentTitle.text = instrument.name
        instrumentDescription.text = instrument.description
    }
}
