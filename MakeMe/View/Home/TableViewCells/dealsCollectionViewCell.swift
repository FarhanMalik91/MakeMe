//
//  dealsCollectionViewCell.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 18/07/2021.
//

import UIKit

class dealsCollectionViewCell: UICollectionViewCell {
    
    //MARK:-UI-Elements
    let titleLabel = label(text: "20% off", textcolor: .white, font: .setFont(FontName: .popins_SemiBold, fontSize: 20), alignment: .natural)
    let bgImage = ImageView(image: "bg")
    let serviceLabel = label(text: "Makeup Service", textcolor: .white, font: .setFont(FontName: .popins_regular, fontSize: 13), alignment: .natural)
    let bookLabel = label(text: "Book Now ->", textcolor: .systemOrange, font: .setFont(FontName: .popins_regular, fontSize: 12), alignment: .natural)
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        self.backgroundColor = .systemBackground
    }
    //MARK:-Helper functions
    func setUpUI(){
        contentView.addSubview(bgImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(serviceLabel)
        contentView.addSubview(bookLabel)
        
       
        //MARK:-Styling
        bgImage.layer.cornerRadius = 14
      
        NSLayoutConstraint.activate([
        
            bgImage.topAnchor.constraint(equalTo: topAnchor),
            bgImage.leadingAnchor.constraint(equalTo: leadingAnchor ),
            bgImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            bgImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: bgImage.topAnchor , constant: 130.heightRatio),
            titleLabel.leadingAnchor.constraint(equalTo: bgImage.leadingAnchor , constant: 10.widthRatio),
            
            serviceLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor , constant: 1.heightRatio),
            serviceLabel.leadingAnchor.constraint(equalTo: bgImage.leadingAnchor , constant: 10.widthRatio),
            
            bookLabel.topAnchor.constraint(equalTo: serviceLabel.bottomAnchor , constant: 5.heightRatio),
            bookLabel.leadingAnchor.constraint(equalTo: bgImage.leadingAnchor , constant: 10.widthRatio),
 
        ])
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
