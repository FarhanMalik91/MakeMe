//
//  MakeMeTableViewCell.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 24/07/2021.
//

import UIKit

class MakeMeTableViewCell: UITableViewCell {
    //MARK:-UI-Elements
    let menuLabel = label(text: "", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 20), alignment: .natural)
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    //MARK:-Helper Functions
    func setUpUI()
    {
        contentView.addSubview(menuLabel)
        
        NSLayoutConstraint.activate([
            menuLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            menuLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor , constant: 40.widthRatio),
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
