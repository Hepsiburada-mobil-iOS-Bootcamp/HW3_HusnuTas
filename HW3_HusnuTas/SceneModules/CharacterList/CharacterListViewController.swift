//
//  CharacterListViewController.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 10.10.2021.
//

import UIKit

class CharacterListViewController: BaseViewController<CharacterListViewModel> {
    
    deinit {
        print("DEINIT CharacterListViewController")
    }

    private var itemListView: ItemListView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        addMainComponent()
        subscribeViewModelListeners()
        viewModel.getCharacterList()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func addMainComponent() {
        itemListView = ItemListView()
        itemListView.translatesAutoresizingMaskIntoConstraints = false
        itemListView.delegate = viewModel
        view.addSubview(itemListView)
        
        NSLayoutConstraint.activate([
            itemListView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            itemListView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            itemListView.topAnchor.constraint(equalTo: view.topAnchor),
            itemListView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
    private func subscribeViewModelListeners() {
        viewModel.subscribeState { [weak self] state in
            switch state{
            case .loading:
                print("data is getting")
            case .done:
                print("data is ready")
                self?.itemListView.reloadTableView()
            case .failure:
                print("error")
            }
        }
    }

}


