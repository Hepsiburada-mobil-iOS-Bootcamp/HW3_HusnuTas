//
//  MainViewController.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 6.10.2021.
//

import UIKit

class MainViewController: BaseViewController<MainViewModel> {
    
    private lazy var navigationButton: UIButton = {
        let temp = UIButton(type: .system)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.addTarget(self, action: .navigationButtonTapped, for: .touchUpInside)
        temp.setTitle("PUSH", for: .normal)
        return temp
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
        
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        
        view.addSubview(navigationButton)
        
        NSLayoutConstraint.activate([
            navigationButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            navigationButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func navigationButtonAction(_ sender: UIButton) {
        print("navigate")
        //let viewController = TestViewController()
        let viewController = CharacterListViewBuilder.build()
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}

extension Selector {
    static let navigationButtonTapped = #selector(MainViewController.navigationButtonAction)
}
