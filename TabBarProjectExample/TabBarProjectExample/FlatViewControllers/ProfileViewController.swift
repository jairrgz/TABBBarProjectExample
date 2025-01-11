//
//  ProfileViewController.swift
//  TabBarProjectExample
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 11/01/25.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        title = "Perfil"
        
    }
    

}



import SwiftUI

struct ProfileViewControllerPreview: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ProfileViewController {
        return ProfileViewController()
    }
    
    func updateUIViewController(_ uiViewController: ProfileViewController, context: Context) {
        
    }

    
}

#Preview {
    ProfileViewControllerPreview()
        .edgesIgnoringSafeArea(.all)
    
}

