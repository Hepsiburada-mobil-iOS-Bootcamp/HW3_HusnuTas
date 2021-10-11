//
//  ItemListProtocol.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 11.10.2021.
//

import Foundation

protocol ItemListProtocol: AnyObject {
    
    func getNumberOfSections() -> Int
    func getNumberOfRows(in section: Int) -> Int
    func getData(at index: Int) -> GenericDataProtocol?
    
}
