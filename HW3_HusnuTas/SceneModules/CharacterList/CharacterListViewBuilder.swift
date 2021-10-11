//
//  ChaaracterListViewBuilder.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 10.10.2021.
//

import UIKit

class CharacterListViewBuilder {
    
    class func build() -> UIViewController {
        let characterListFormatter = CharacterListViewFormatter()
        let viewModel = CharacterListViewModel(formatter: characterListFormatter)
        let viewController = CharacterListViewController(viewModel: viewModel)
        return viewController
    }
    
}
