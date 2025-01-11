//
//  TabBarController.swift
//  TabBarProjectExample
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 10/01/25.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        
        // Personalización del TabBar
        tabBar.tintColor = .orange
        tabBar.backgroundColor = .systemBackground
    }
    
    private func setupTabs() {
        // Creación de ViewControllers
        let homeVC = HomeViewController()
        let exploreVC = ExploreTableViewController()
        let mediaVC = MediaTableViewController()
        let chatVC = ChatTableViewController()
        let profileVC = ProfileViewController()
        
        // Configuración de navegación
        let nav1 = UINavigationController(rootViewController: homeVC)
        let nav2 = UINavigationController(rootViewController: exploreVC)
        let nav3 = UINavigationController(rootViewController: mediaVC)
        let nav4 = UINavigationController(rootViewController: chatVC)
        let nav5 = UINavigationController(rootViewController: profileVC)
        
        // Configuración de íconos y títulos
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Explorar", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Media", image: UIImage(systemName: "play.circle"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Chat", image: UIImage(systemName: "message"), tag: 4)
        nav5.tabBarItem = UITabBarItem(title: "Perfil", image: UIImage(systemName: "person"), tag: 5)
        
        // Asignación de ViewControllers al TabBar
        setViewControllers([nav1, nav2, nav3, nav4, nav5], animated: true)
    }
}
