//
//  CharacterListViewState.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 11.10.2021.
//

import Foundation

typealias CharacterListViewStateBlock = (CharacterListViewState) -> Void

enum CharacterListViewState {
    
    case loading
    case done
    case failure
    
}
