//
//  ItemTableViewCell.swift
//  HW3_HusnuTas
//
//  Created by Hüsnü Taş on 11.10.2021.
//

import UIKit

class ItemTableViewCell: BaseTableViewCell {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .white
        return temp
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [imageViewComponent, cellInfo])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .horizontal
        temp.spacing = 20
        return temp
    }()
    
    private lazy var imageViewComponent: CustomImageViewComponentContainer = {
        let temp = CustomImageViewComponentContainer()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 50).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 50).isActive = true
        temp.layer.cornerRadius = 4
        temp.layer.shadowColor = UIColor.black.cgColor
        temp.layer.shadowOffset = CGSize(width: 0, height: 4)
        temp.layer.shadowOpacity = 0.4
        return temp
    }()
    
    private lazy var cellInfo: LabelPackComponent = {
        let labelPackData = getLabelPackComponentData()
        let temp = LabelPackComponent(data: labelPackData)
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    override func addMajorViews() {
        super.addMajorViews()
        addUserComponents()
//        print(getLabelPackComponentData().labelPackComponentModifier ?? 0)
    }
    
    private func addUserComponents() {
        contentView.addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10)
        ])
    }
    
    func setData(by value: GenericDataProtocol) {
        guard let data = value as? ItemTableViewCellData else { return }
        imageViewComponent.setData(by: data.imageData)
        cellInfo.setData(by: data.cellInfo)
    }
    
    private func getLabelPackComponentData() -> LabelPackComponentData {
        return LabelPackComponentData().setLabelPackData(lineBreakMode: .byTruncatingTail, numberOfLines: 2, contentMode: .left, textAlignment: .left)
    }
    
}


