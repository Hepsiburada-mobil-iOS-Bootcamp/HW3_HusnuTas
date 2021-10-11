//
//  LabelPackComponentModifier.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 12.10.2021.
//

import UIKit

struct LabelPackComponentModifier {
    
    var lineBreakMode: NSLineBreakMode = .byWordWrapping
    var numberOfLines: Int = 0
    var contentMode: UIView.ContentMode = .center
    var textAlignment: NSTextAlignment = .center
    
    init(lineBreakMode: NSLineBreakMode = .byWordWrapping, numberOfLines: Int = 0, contentMode: UIView.ContentMode = .center, textAlignment: NSTextAlignment = .center) {
        self.lineBreakMode = lineBreakMode
        self.numberOfLines = numberOfLines
        self.contentMode = contentMode
        self.textAlignment = textAlignment
    }
    
}
