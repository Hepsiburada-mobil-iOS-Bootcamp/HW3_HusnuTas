//
//  TabBarImages.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 3.10.2021.
//

import UIKit

enum TabBarImages: String, GenericValueProtocol {
    
    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case home = "home"
    case favorite = "favorite"
    case homeSelected = "homeSelected"
    case favoriteSelected = "favoriteSelected"
    
}
