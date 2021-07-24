//
//  Constant.swift
//  DeliciousFood
//
//  Created by Malik Farhan Asim on 02/05/2021.
//

import Foundation
import UIKit

struct AppColor {
    
    static let navTitleColor = #colorLiteral(red: 0.9529411765, green: 0.6117647059, blue: 0.07058823529, alpha: 1)
}

extension UIColor {
    static let navTitleColor = #colorLiteral(red: 0.9529411765, green: 0.6117647059, blue: 0.07058823529, alpha: 1)
}
extension UICollectionViewCell {
    func shadowDecorate() {

        self.layer.cornerRadius = 5.autoSized
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.shadowColor = #colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2274509804, alpha: 0.1).cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 3)
        self.layer.shadowRadius = 7.5
        self.layer.shadowOpacity = 0.9
        self.layer.masksToBounds = false
        
    }
}
