//
//  oderDetailTableViewCell.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 24/07/2021.
//

import UIKit

class oderDetailTableViewCell: UITableViewCell {
    //MARK:-UI-Elements
    var profileView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.9972448945, green: 0.9418284297, blue: 0.9231179357, alpha: 1)
        topView.layer.cornerRadius = 18
        return topView
    }()
    let profileImage = ImageView(image: "bg")
    let nameLabel = label(text: "Kate Johonson", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 15), alignment: .natural)
    let subLabel = label(text: "MakeUp Artist", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10), alignment: .natural)
    let orderLabel = label(text: "order", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 18), alignment: .natural)
    let productImage = ImageView(image: "bg")
    let productDetailLabel = label(text: "ORS olive hair color of farhan Pvl", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 14), alignment: .natural)
    let priceDetailLabel = label(text: "$146 X 1", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 13), alignment: .natural)
    let totalPriceLabel = label(text: "$146", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 14), alignment: .natural)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
        profileImage.layer.cornerRadius = 25
    }
    //MARK:-Helper Functions
    func setUpUI()
    {
        contentView.addSubview(profileView)
        profileView.addSubview(nameLabel)
        profileView.addSubview(subLabel)
        profileView.addSubview(profileImage)
        contentView.addSubview(orderLabel)
        contentView.addSubview(productImage)
        contentView.addSubview(productDetailLabel)
        contentView.addSubview(priceDetailLabel)
        contentView.addSubview(totalPriceLabel)
 
        NSLayoutConstraint.activate([
        
            profileView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20.heightRatio),
            profileView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20.widthRatio),
            profileView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor , constant: -20.widthRatio),
            profileView.heightAnchor.constraint(equalToConstant: 130.heightRatio),
            
            nameLabel.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 20.widthRatio),
            nameLabel.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 35.heightRatio),
            
            subLabel.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 20.widthRatio),
            subLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 1.heightRatio),
            
            profileImage.trailingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: -20.widthRatio),
            profileImage.centerYAnchor.constraint(equalTo: profileView.centerYAnchor),
            profileImage.widthAnchor.constraint(equalToConstant: 50),
            profileImage.heightAnchor.constraint(equalToConstant: 50),
            
            orderLabel.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 30.heightRatio),
            orderLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30.widthRatio),
            
            productImage.topAnchor.constraint(equalTo: orderLabel.bottomAnchor, constant: 30.heightRatio),
            productImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50.widthRatio),
            productImage.heightAnchor.constraint(equalToConstant: 90.heightRatio),
            productImage.widthAnchor.constraint(equalToConstant: 90.widthRatio),
            
            productDetailLabel.topAnchor.constraint(equalTo: orderLabel.bottomAnchor, constant: 50.heightRatio),
            productDetailLabel.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 20.widthRatio),
            
            priceDetailLabel.topAnchor.constraint(equalTo: productDetailLabel.bottomAnchor, constant: 5.heightRatio),
            priceDetailLabel.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 20.widthRatio),
            
            totalPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30.widthRatio),
            totalPriceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50.heightRatio),

        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
}
