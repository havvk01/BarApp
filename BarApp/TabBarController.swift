//
//  TabBarController.swift
//  BarApp
//
//  Created by Slava Havvk on 03.04.2023.
//

import UIKit
enum Tabs: Int {
    case first
    case second
    case third
    case fourth
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
//        switchTo(tab: .progress)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        print("test")
        tabBar.tintColor = .black
        tabBar.barTintColor = .white
        tabBar.backgroundColor = .gray
        
        tabBar.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 0.5)
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        
        let firstTabController = FirstTabController()
        let secondTabController = SecondTabController()
        let thirdTabController = ThirdTabController()
        let fourthTabController = FourthTabController()
        
        let firstTabNavigation = UINavigationController(rootViewController: firstTabController)
        let secondTabNavigation = UINavigationController(rootViewController: secondTabController)
        let thirdTabNavigation = UINavigationController(rootViewController: thirdTabController)
        let fourthTabNavigation = UINavigationController(rootViewController: fourthTabController)
        
        firstTabNavigation.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: Tabs.first.rawValue)
        secondTabNavigation.tabBarItem = UITabBarItem(title: "Bookmark", image: UIImage(systemName: "book"), tag: Tabs.second.rawValue)
        thirdTabNavigation.tabBarItem = UITabBarItem(title: "Cool", image: UIImage(systemName: "fanblades"), tag: Tabs.third.rawValue)
        fourthTabNavigation.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "star"), tag: Tabs.fourth.rawValue)
        
        setViewControllers([firstTabNavigation, secondTabNavigation, thirdTabNavigation, fourthTabNavigation], animated: true)
    }
    
}

