//
//  ChatTableViewController.swift
//  TabBarProjectExample
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 10/01/25.
//

import Foundation

import UIKit

class ChatTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "Chat"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Chat \(indexPath.row + 1)"
        return cell
    }
}




import SwiftUI
#Preview {
    ChatTableViewController()
}
