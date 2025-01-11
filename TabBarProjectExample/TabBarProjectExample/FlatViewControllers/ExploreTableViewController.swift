//
//  ExploreTableViewController.swift
//  TabBarProjectExample
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 10/01/25.
//

import UIKit

class ExploreTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        title = "Explorar"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Elemento \(indexPath.row + 1)"
        return cell
    }
}
