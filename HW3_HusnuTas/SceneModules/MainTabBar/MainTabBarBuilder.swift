//
//  MainTabBarBuilder.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 9.10.2021.
//

import UIKit

class MainTabBarBuilder {
    
    class func build() -> UIViewController {
        
        let mainViewController = MainViewBuilder.build()
        let favoriteViewController = FavoriteViewBuilder.build()
        
        let tabViewController = MainTabBarViewController()
        tabViewController.viewControllers = [mainViewController, favoriteViewController]
        tabViewController.tabBar.backgroundColor = .systemBackground
        tabViewController.tabBar.tintColor = .black
        
        return tabViewController
        
    }
    
}
