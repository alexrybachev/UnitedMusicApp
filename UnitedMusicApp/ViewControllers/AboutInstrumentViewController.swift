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
    @IBOutlet var orderButton: UIButton!
    @IBOutlet var instrumentTitle: UILabel!
    @IBOutlet var instrumentDescription: UILabel!
    
    // MARK: = Properties
    var instrument: Instrument!
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let orderVC = segue.destination as? OrderViewController else { return }
        orderVC.info = instrument.name
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        instrumentImage.layer.cornerRadius = 10
        instrumentImage.image = UIImage(named: instrument.image)
        instrumentCost.text = "\(instrument.cost) ₽"
        orderButton.layer.cornerRadius = 10
        instrumentTitle.text = instrument.name
        instrumentDescription.text = instrument.description
    }
    
}
