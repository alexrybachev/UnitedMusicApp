//
//  ListOfToolsTableViewController.swift
//  UnitedMusicApp
//
//  Created by Alexandr Barabash on 28.03.2022.
//

import UIKit

class ListOfToolsTableViewController: UITableViewController {
    
    // MARK: - Public Propirties
    var instrument: [Instrument]!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        
        tableView.backgroundView = UIImageView(image: UIImage(named: "r_fRaZf82fY"))
        tableView.backgroundView?.alpha = 0.4
        tableView.backgroundView?.contentMode = .right
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        instrument.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "goodsCell", for: indexPath)
        let instrument = instrument[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.secondaryText = instrument.name
        content.image = UIImage(named: instrument.image)
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let description = instrument[indexPath.row]
        performSegue(withIdentifier: "description", sender: description)
    }
    
    // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let listOfToolsVC = segue.destination as? AboutInstrumentViewController else { return }
         listOfToolsVC.instrument = sender as? Instrument

     }
    
}
