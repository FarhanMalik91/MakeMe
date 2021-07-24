//
//  headerView.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 18/07/2021.
//

import UIKit

class headerView: UIView {

    let headerTitle = label(text: "Nearby Restaurants", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 20), alignment: .left)
    let headerButton = button(text: "View More", color: .black, font: .setFont(FontName: .popins_regular, fontSize: 12), cornerradius: 0, bgcolor: .clear)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.9528577924, green: 0.9529945254, blue: 0.9528279901, alpha: 0.9358946918)
        addSubview(headerTitle)
         addSubview(headerButton)
        NSLayoutConstraint.activate([
            headerTitle.topAnchor.constraint(equalTo: self.topAnchor , constant: 15.heightRatio),
            headerTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 21.widthRatio),
            headerTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            headerButton.topAnchor.constraint(equalTo: self.topAnchor , constant: 15.heightRatio),
            headerButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -19.widthRatio),
            headerButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func dataProvider(headerTitle: String , buttonTitle: String){
        self.headerTitle.text = headerTitle
        headerButton.setTitle(buttonTitle, for: .normal)
    }
   
}
