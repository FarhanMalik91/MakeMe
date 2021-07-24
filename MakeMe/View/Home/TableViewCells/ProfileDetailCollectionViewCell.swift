//
//  ProfileDetailCollectionViewCell.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 18/07/2021.
//

import UIKit

class ProfileDetailCollectionViewCell: UICollectionViewCell {
    //MARK:-UI-Elements
    var containerView : UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = #colorLiteral(red: 0.9828532338, green: 0.490303874, blue: 0.5475842953, alpha: 1)
        containerView.layer.cornerRadius = 7
        return containerView
    }()
    let timeLabel = label(text: "🕓 10am - 11.30am", textcolor: .white, font: .setFont(FontName: .popins_regular, fontSize: 14), alignment: .natural)
    let profileImage = ImageView(image: "make")
    let nameLabel = label(text: "Kate Johonson", textcolor: .white, font: .setFont(FontName: .popins_regular, fontSize: 13), alignment: .natural)
    let subLabel = label(text: "Hair Stylist", textcolor: .systemRed, font: .setFont(FontName: .popins_regular, fontSize: 12), alignment: .natural)
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    //MARK:-Helper functions
    func setUpUI(){
        addSubview(containerView)
        containerView.addSubview(timeLabel)
        containerView.addSubview(profileImage)
        containerView.addSubview(nameLabel)
        containerView.addSubview(subLabel)
       
        //MARK:-Styling
        timeLabel.layer.cornerRadius = 10
        timeLabel.backgroundColor = #colorLiteral(red: 0.9013194442, green: 0.419939816, blue: 0.4725076556, alpha: 0.9230789812)
        profileImage.layer.cornerRadius = 15
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50.heightRatio),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20.widthRatio),
            containerView.heightAnchor.constraint(equalToConstant: 120.heightRatio),
            containerView.widthAnchor.constraint(equalToConstant: 200.widthRatio),
            
            timeLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 3.heightRatio),
            timeLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 5.widthRatio),
            timeLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor , constant: -5.widthRatio),
            timeLabel.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            
            profileImage.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 7.heightRatio),
            profileImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 5.widthRatio),
            profileImage.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            profileImage.widthAnchor.constraint(equalToConstant: 30.widthRatio),
            
            nameLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 7.heightRatio),
            nameLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor , constant: 7.widthRatio),
            
            subLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3.heightRatio),
            subLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor , constant: 7.widthRatio),

            
        ])
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
