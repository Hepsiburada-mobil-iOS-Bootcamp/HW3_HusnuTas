//
//  CharacterListViewFormatter.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 11.10.2021.
//

import Foundation

class CharacterListViewFormatter: CharacterListViewFormatterProtocol {
    
    func getItem(from data: CharacterData) -> ItemTableViewCellData {
        return ItemTableViewCellData(imageData: CustomImageViewComponentData(imageUrl: "https://picsum.photos/200/200"), cellInfo: LabelPackComponentData(title: data.name, subTitle: getDescription(from: data.description)))
    }
    
    /// if description value is nil or empty string returns "Unknown" else returns the given value
    private func getDescription(from description: String?) -> String {
        guard let value = description, !value.isEmpty else { return "Unknown" }
        return value
    }
    
}
