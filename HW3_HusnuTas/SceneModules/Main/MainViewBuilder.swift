//
//  MainViewBuilder.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 6.10.2021.
//

import UIKit

class MainViewBuilder {
    
    class func build() -> UIViewController {
        
        let viewModel = MainViewModel()
        let viewController = MainViewController(viewModel: viewModel)
        
        // add navigation controller and give mainViewController as root
        let navigationController = UINavigationController(rootViewController: viewController)
        
        viewController.title = "Main"
        
        // set navigation icons
        viewController.tabBarItem.image = TabBarImages.home.value
        viewController.tabBarItem.selectedImage = TabBarImages.homeSelected.value
        
        // navigation bar settings
//        navigationController.setNavigationBarHidden(true, animated: false)
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemBackground
        viewController.navigationController?.setNavigationBarHidden(true, animated: false)
        viewController.navigationController?.navigationBar.scrollEdgeAppearance = barAppearance
        
        return navigationController
        
    }
    
}
