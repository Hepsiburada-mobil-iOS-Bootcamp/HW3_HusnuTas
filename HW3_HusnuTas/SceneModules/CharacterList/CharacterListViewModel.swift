//
//  CharacterListViewModel.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 10.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterListViewModel {
    
    private var state: CharacterListViewStateBlock?
    
    private var data: CharacterDataResponse?
    
    private var formatter: CharacterListViewFormatterProtocol
    
    init(formatter: CharacterListViewFormatterProtocol) {
        self.formatter = formatter
    }
    
    deinit {
        print("DEINIT CharacterListViewModel")
    }
    
    func subscribeState(completion: @escaping CharacterListViewStateBlock) {
        state = completion
    }
    
    func getCharacterList() {
        
        state?(.loading)
        
        fireApiCall(with: apiCallHandler)
        
    }
    
    private func fireApiCall(with completion: @escaping (Result<CharacterDataResponse, ErrorResponse>) -> Void) {
        
        do {
            let urlRequest = try MarvelCharacterApiServiceProvider().returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
        } catch let error {
            print("error: \(error)")
        }
        
        
//        guard let url = URL(string: "https://gateway.marvel.com/v1/public/characters?ts=8F46CC9B-4885-4D8D-9761-9092B84D4C5A&apikey=b1b6a2c675b36a5e44800a4fbaa2fb8e&hash=68cb7ec069de76b37db17dc7e2aa5b5c&offset=30&limit=30") else { return }
//
//        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 60)
//        request.httpMethod = "GET"
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        APIManager.shared.executeRequest(urlRequest: request, completion: completion)
        
        
    }
    
    private func dataHandler(with response: CharacterDataResponse) {
        data = response
        state?(.done)
    }
    
    // MARK: - CallBack Listener
    private lazy var apiCallHandler: (Result<CharacterDataResponse, ErrorResponse>) -> Void = { [weak self] response in
        switch response {
        case .success(let response):
            print("response: \(response)")
            self?.dataHandler(with: response)
        case .failure(let error):
            print("error: \(error)")
            self?.state?(.failure)
        }
    }
    
}

extension CharacterListViewModel: ItemListProtocol {
    func getNumberOfSections() -> Int {
        return 1
    }
    
    func getNumberOfRows(in section: Int) -> Int {
        guard let dataUnwrapped = data else { return 0 }
        return dataUnwrapped.data.results.count
    }
    
    func getData(at index: Int) -> GenericDataProtocol? {
        guard let dataUnwrapped = data else { return nil }
        return formatter.getItem(from: dataUnwrapped.data.results[index])
    }
}
