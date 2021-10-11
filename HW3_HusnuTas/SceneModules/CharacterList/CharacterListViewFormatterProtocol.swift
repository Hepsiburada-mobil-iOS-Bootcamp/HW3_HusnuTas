//
//  CharacterListViewProtocol.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 11.10.2021.
//

import Foundation

protocol CharacterListViewFormatterProtocol {
    
    func getItem(from data: CharacterData) -> ItemTableViewCellData
    
}
