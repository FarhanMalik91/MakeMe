//
//  TableViewCell.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 18/07/2021.
//

import UIKit

class userProfileTableViewCell: UITableViewCell {
    //MARK:-UI-Elements
    var containerView : UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = #colorLiteral(red: 0.9828532338, green: 0.490303874, blue: 0.5475842953, alpha: 1)
        containerView.layer.cornerRadius = 7
        return containerView
    }()
    let nameLabel = label(text: "Kate Johonson", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 15), alignment: .natural)
    let subLabel = label(text: "MakeUp Artist", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10), alignment: .natural)
    let profileImage = ImageView(image: "bg")
    let reviewsLabel = label(text: "⭐️ 4.5(11) . 200 miles", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 11), alignment: .natural)
    let bookButton = button(text: "Book", color: .black, font: .setFont(FontName: .popins_regular, fontSize: 13), cornerradius: 5, bgcolor: .white)
    let viewProfileButton = button(text: "View Profile", color: .black, font: .setFont(FontName: .popins_regular, fontSize: 13), cornerradius: 5, bgcolor: .white)
    let bookImage = ImageView(image: "alarm")
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    //MARK:-Helper Functions
    func setUpUI()
    {
        contentView.addSubview(containerView)
        containerView.addSubview(profileImage)
        containerView.addSubview(nameLabel)
        containerView.addSubview(subLabel)
        containerView.addSubview(reviewsLabel)
        containerView.addSubview(bookButton)
        containerView.addSubview(viewProfileButton)
        
        //MARK:-Styling
        profileImage.layer.cornerRadius = 15
        bookButton.alignImageRight()
        
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor , constant: 10.heightRatio),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor , constant: -10.heightRatio),
            
            profileImage.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            profileImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor , constant: -20.widthRatio),
            profileImage.heightAnchor.constraint(equalToConstant: 100.heightRatio),
            profileImage.widthAnchor.constraint(equalToConstant: 100.widthRatio),
            
            nameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 30.heightRatio),
            nameLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20.widthRatio),
            
            subLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 2.heightRatio),
            subLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20.widthRatio),
            
            reviewsLabel.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 2.heightRatio),
            reviewsLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20.widthRatio),
            
            bookButton.topAnchor.constraint(equalTo: reviewsLabel.bottomAnchor, constant: 2.heightRatio),
            bookButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20.widthRatio),
            bookButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            bookButton.widthAnchor.constraint(equalToConstant: 80.widthRatio),
            
            viewProfileButton.topAnchor.constraint(equalTo: reviewsLabel.bottomAnchor, constant: 2.heightRatio),
            viewProfileButton.leadingAnchor.constraint(equalTo: bookButton.trailingAnchor, constant: 10.widthRatio),
            viewProfileButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            viewProfileButton.widthAnchor.constraint(equalToConstant: 120.widthRatio),
            
            
            
     
        ])
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
