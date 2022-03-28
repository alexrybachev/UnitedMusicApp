//
//  CategoryTableViewController.swift
//  UnitedMusicApp
//
//  Created by Alexandr Barabash on 28.03.2022.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    private let categoryList = Catalog.getCatalog()
    

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categoryList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        let category = categoryList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = category.category
        content.secondaryText = String(category.instrument.count)
        cell.contentConfiguration = content
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
