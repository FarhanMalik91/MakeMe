//
//  firstVieww.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 23/07/2021.
//

import UIKit

class firstVieww: UIView {
    
    let image = ImageView(image: "bg")

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .brown
        addSubview(image)
        
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: leadingAnchor),
            image.trailingAnchor.constraint(equalTo: trailingAnchor),
            image.bottomAnchor.constraint(equalTo: bottomAnchor),
            image.topAnchor.constraint(equalTo: topAnchor),
            
        
        
        ])
    }
//    func setUpUI()
//    {
//
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
