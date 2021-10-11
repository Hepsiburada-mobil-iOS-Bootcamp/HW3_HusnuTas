//
//  ItemTableViewCellData.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 11.10.2021.
//

import Foundation

class ItemTableViewCellData: GenericDataProtocol {
    
    private(set) var imageData: CustomImageViewComponentData
    private(set) var cellInfo: LabelPackComponentData
    
    init(imageData: CustomImageViewComponentData, cellInfo: LabelPackComponentData) {
        self.imageData = imageData
        self.cellInfo = cellInfo
    }
    
}
