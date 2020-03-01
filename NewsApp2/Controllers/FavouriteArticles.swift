//
//  FavouriteArticles.swift
//  NewsApp2
//
//  Created by melvin asare on 26/01/2020.
//  Copyright © 2020 Melvin Asare . All rights reserved.
//

import UIKit

class FavouriteArticles: UITableViewController {

    let cellId = "cellId"
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
            print("Delete Row")
        }
        
        let favouriteAction = UITableViewRowAction(style: .normal, title: "Favourite") { (action, indexPath) in
            print("Add Row")
        }
    
    return [deleteAction, favouriteAction]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = "Hi"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }

}
