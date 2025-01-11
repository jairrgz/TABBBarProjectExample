//
//  HomeViewController.swift
//  TabBarProjectExample
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 10/01/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        title = "Home"
    }
}















import SwiftUI

struct HomeViewControllerPreview: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) ->HomeViewController {
        return HomeViewController()
    }
    
    func updateUIViewController(_ uiViewController: HomeViewController, context: Context) {
        
    }
    
}

#Preview {
    HomeViewControllerPreview()
        .edgesIgnoringSafeArea(.all)
    
}
