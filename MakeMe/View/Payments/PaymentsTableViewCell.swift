//
//  PaymentsTableViewCell.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 19/07/2021.
//

import UIKit

class PaymentsTableViewCell: UITableViewCell {

    //MARK:-UI-Elements
    var containerView : UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = #colorLiteral(red: 0.9828532338, green: 0.490303874, blue: 0.5475842953, alpha: 1)
        containerView.layer.cornerRadius = 7
        return containerView
    }()
    let appiotmentLabel = label(text: "Appointment", textcolor: .yellow, font: .setFont(FontName: .popins_SemiBold, fontSize: 15), alignment: .natural)
    let subLabel = label(text: "service", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10), alignment: .natural)
    let paymentName = label(text: "conrrows", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 14), alignment: .natural)
    let paidLabel = label(text: "Paid", textcolor: .systemGreen, font: .setFont(FontName: .popins_Medium, fontSize: 14), alignment: .center)
    let dateNameLabel = label(text: "28, May 2020", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 14), alignment: .natural)
    let dateLabel = label(text: "Date", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10), alignment: .natural)
    let priceLabel = label(text: "85$", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 14), alignment: .natural)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    //MARK:-Helper Functions
    func setUpUI()
    {
        contentView.addSubview(containerView)
        containerView.addSubview(appiotmentLabel)
        containerView.addSubview(subLabel)
        containerView.addSubview(paymentName)
        containerView.addSubview(paidLabel)
        containerView.addSubview(dateLabel)
        containerView.addSubview(dateNameLabel)
        containerView.addSubview(priceLabel)
        
        
        
        //MARK:-Styling
        paidLabel.layer.cornerRadius = 8
        paidLabel.clipsToBounds = true
        paidLabel.backgroundColor = #colorLiteral(red: 0.8498021364, green: 0.9021415114, blue: 0.8720167279, alpha: 0.8903574486)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor , constant: 10.heightRatio),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor , constant: -10.heightRatio),
            
           
            appiotmentLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 30.heightRatio),
            appiotmentLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20.widthRatio),
            
            subLabel.topAnchor.constraint(equalTo: appiotmentLabel.bottomAnchor, constant: 15.heightRatio),
            subLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20.widthRatio),
            
            paymentName.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 2.heightRatio),
            paymentName.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20.widthRatio),
            
            paidLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 30.heightRatio),
            paidLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20.widthRatio),
            paidLabel.widthAnchor.constraint(equalToConstant: 50.widthRatio),
            paidLabel.heightAnchor.constraint(equalToConstant: 35.heightRatio),
            
            dateLabel.centerYAnchor.constraint(equalTo: subLabel.centerYAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: subLabel.trailingAnchor, constant: 100.widthRatio),
            
            dateNameLabel.centerYAnchor.constraint(equalTo: paymentName.centerYAnchor),
            dateNameLabel.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor),
          
            priceLabel.centerYAnchor.constraint(equalTo: dateNameLabel.centerYAnchor),
            priceLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20.widthRatio),
            
            
            
            
            
        ])
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

   
}
