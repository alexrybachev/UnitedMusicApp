//
//  CategoryTableViewController.swift
//  UnitedMusicApp
//
//  Created by Alexandr Barabash on 28.03.2022.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    // MARK: - Private Properties
    private let categoryList = Catalog.getCatalog()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundView = UIImageView(image: UIImage(named: "hdFXZUS0kFU"))
        tableView.backgroundView?.alpha = 0.7
        tableView.backgroundView?.contentMode = .scaleAspectFill
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categoryList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        let category = categoryList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        let font = UIFont.boldSystemFont(ofSize: 13)
        let attributes = [NSAttributedString.Key.font: font]
        content.attributedText = NSAttributedString(string: category.category, attributes: attributes)
        
        content.secondaryText = String(category.instrument.count)
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let instrument = categoryList[indexPath.row].instrument
        performSegue(withIdentifier: "showInstrument", sender: instrument)
    }
    
    // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let listOfToolsVC = segue.destination as? ListOfToolsTableViewController else { return }
         listOfToolsVC.instrument = sender as? [Instrument]
     }
}
