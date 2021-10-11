//
//  LabelPackComponentDataSetter.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 11.10.2021.
//

import UIKit

typealias Value = LabelPackComponentData

struct LabelPackComponentDataSetter: LabelPackComponentDataProtocol {
    
    private(set) var lineBreakMode: NSLineBreakMode = .byWordWrapping
    private(set) var numberOfLines: Int = 0
    private(set) var contentMode: UIView.ContentMode = .center
    private(set) var textAlignment: NSTextAlignment = .center
    
    mutating func setLineBreakMode(by value: NSLineBreakMode) -> LabelPackComponentDataSetter {
        lineBreakMode = value
        return self
    }
    
    mutating func setNumberOfLines(by value: Int) -> LabelPackComponentDataSetter {
        numberOfLines = value
        return self
    }
    
    mutating func setContentMode(by value: UIView.ContentMode) -> LabelPackComponentDataSetter {
        contentMode = value
        return self
    }
    
    mutating func setTextAlignmente(by value: NSTextAlignment) -> LabelPackComponentDataSetter {
        textAlignment = value
        return self
    }
    
}
