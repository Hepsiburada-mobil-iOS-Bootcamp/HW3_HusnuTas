//
//  LabelPackComponentData.swift
//  HW2_HusnuTas
//
//  Created by Hüsnü Taş on 3.10.2021.
//

import UIKit

class LabelPackComponentData {
    
    private(set) var title: String
    private(set) var subTitle: String
    private(set) var labelPackComponentModifier: LabelPackComponentModifier!
    
    init(title: String = "", subTitle: String = "") {
        self.title = title
        self.subTitle = subTitle
    }
    
    /// Creates an instance of LabelPackComponentModifier with the given parameters and returns as LabelPackComponentData
    /// The given parameters affect  the subTitle style in the LabelPackComponent
    func setLabelPackData(lineBreakMode: NSLineBreakMode, numberOfLines: Int, contentMode: UIView.ContentMode, textAlignment: NSTextAlignment) -> Self {
        self.labelPackComponentModifier = LabelPackComponentModifier(lineBreakMode: lineBreakMode, numberOfLines: numberOfLines, contentMode: contentMode, textAlignment: textAlignment)
        return self
    }
    
    
    
}
