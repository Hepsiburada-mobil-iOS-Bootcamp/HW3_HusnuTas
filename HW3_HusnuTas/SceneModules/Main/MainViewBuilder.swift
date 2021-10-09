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
        
        return viewController
        
    }
    
}
