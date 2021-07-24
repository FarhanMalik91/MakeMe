//
//  appiontmentConfirmationViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 24/07/2021.
//

import UIKit

class appiontmentConfirmationViewController: UIViewController {
    //MARK:-UI-Elements
    var topView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.8578482866, green: 0.3262366354, blue: 0.1355837584, alpha: 1)
        topView.layer.cornerRadius = 18
        return topView
    }()
    var titleLabel = label(text: "Appionmtments", textcolor: .white, font: .setFont(FontName: .popins_Medium, fontSize: 22), alignment: .natural)
    var bellIconButton : UIButton = {
        let bellButton = UIButton()
        bellButton.setImage(UIImage(systemName: "bell"), for: .normal)
        bellButton.translatesAutoresizingMaskIntoConstraints = false
        bellButton.tintColor = .white
        return bellButton
    }()
    let backButton = button(text: "<", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 25), cornerradius: 0, bgcolor: .clear)
    var confirmationLabel = label(text: "Please confrim your appiontment", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 22), alignment: .natural)
    var appiontmentDetailView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.9972448945, green: 0.9418284297, blue: 0.9231179357, alpha: 1)
        topView.layer.cornerRadius = 18
        return topView
    }()
    var bookibgLabel = label(text: "You are booking an appiontment with ", textcolor: .systemOrange, font: .setFont(FontName: .popins_regular, fontSize: 18), alignment: .natural)
    var nameLabel = label(text: "Kate Johson", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 17), alignment: .center)
    var forLabel = label(text: "for", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 15), alignment: .center)
    var HairLabel = label(text: "Natural Hair", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 17), alignment: .center)
    var serviceLabel = label(text: "Service on", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 17), alignment: .natural)
    var dateLabel = label(text: "28, May2020 / 2PM - 3PM", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 17), alignment: .natural)
    let booktbtn = button(text: "Correct,book it 👍", color: .white, font: .setFont(FontName: .popins_SemiBold, fontSize: 18), cornerradius: 25, bgcolor: .orange)
    let wrongBtn = button(text: "Thats wrong", color: .black, font: .setFont(FontName: .popins_regular, fontSize: 12), cornerradius: 25, bgcolor: .clear)
    override func viewDidLoad() {
        super.viewDidLoad()
         setUpUI()
        view.backgroundColor = .systemBackground
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
        booktbtn.addTarget(self, action: #selector(bookButtonClicked), for: .touchUpInside)
        
    }
    //MARK:-Helper functions
    @objc func backButtonClicked()
    {
        navigationController?.popViewController(animated: true)
    }
    @objc func bookButtonClicked()
    {
       let controller = PaymentServiceViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
        tabBarController?.tabBar.isHidden = false
    }
    func setUpUI()
    {
        view.addSubview(topView)
        topView.addSubview(backButton)
        topView.addSubview(titleLabel)
        topView.addSubview(bellIconButton)
        view.addSubview(confirmationLabel)
        view.addSubview(appiontmentDetailView)
        appiontmentDetailView.addSubview(bookibgLabel)
        appiontmentDetailView.addSubview(nameLabel)
        appiontmentDetailView.addSubview(forLabel)
        appiontmentDetailView.addSubview(HairLabel)
        appiontmentDetailView.addSubview(serviceLabel)
        appiontmentDetailView.addSubview(dateLabel)
        view.addSubview(booktbtn)
        view.addSubview(wrongBtn)
        
 
        //MARK:-Stylingt
        confirmationLabel.numberOfLines = 0
        nameLabel.backgroundColor = #colorLiteral(red: 0.8979603648, green: 0.8980897069, blue: 0.8979321122, alpha: 1)
        HairLabel.backgroundColor = #colorLiteral(red: 0.8979603648, green: 0.8980897069, blue: 0.8979321122, alpha: 1)
        dateLabel.backgroundColor = #colorLiteral(red: 0.8979603648, green: 0.8980897069, blue: 0.8979321122, alpha: 1)
        serviceLabel.numberOfLines = 0
        
       
        NSLayoutConstraint.activate([
            
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 150.heightRatio),
            
            backButton.topAnchor.constraint(equalTo: topView.topAnchor , constant: 15.heightRatio),
            backButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20.widthRatio),
            
            titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30.heightRatio),
            
            bellIconButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            bellIconButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20.widthRatio),
            bellIconButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            bellIconButton.widthAnchor.constraint(equalToConstant: 40.widthRatio),
 
            confirmationLabel.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 35.heightRatio),
            confirmationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.widthRatio),
            confirmationLabel.widthAnchor.constraint(equalToConstant: 230.widthRatio),
            
            appiontmentDetailView.topAnchor.constraint(equalTo: confirmationLabel.bottomAnchor, constant: 35.heightRatio),
            appiontmentDetailView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.widthRatio),
            appiontmentDetailView.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: -20.widthRatio),
            appiontmentDetailView.heightAnchor.constraint(equalToConstant: 190.heightRatio),
            
            bookibgLabel.topAnchor.constraint(equalTo: appiontmentDetailView.topAnchor, constant: 20.heightRatio),
            bookibgLabel.leadingAnchor.constraint(equalTo: appiontmentDetailView.leadingAnchor, constant: 20.widthRatio),
            bookibgLabel.widthAnchor.constraint(equalToConstant: 500.widthRatio),
            
            nameLabel.topAnchor.constraint(equalTo: bookibgLabel.bottomAnchor, constant: 10.heightRatio),
            nameLabel.leadingAnchor.constraint(equalTo: appiontmentDetailView.leadingAnchor, constant: 20.widthRatio),
            nameLabel.widthAnchor.constraint(equalToConstant: 140.widthRatio),
            
            forLabel.topAnchor.constraint(equalTo: bookibgLabel.bottomAnchor, constant: 10.heightRatio),
            forLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 10.widthRatio),
            forLabel.widthAnchor.constraint(equalToConstant: 30.widthRatio),
            
            HairLabel.topAnchor.constraint(equalTo: bookibgLabel.bottomAnchor, constant: 10.heightRatio),
            HairLabel.leadingAnchor.constraint(equalTo: forLabel.trailingAnchor, constant: 10.widthRatio),
            HairLabel.widthAnchor.constraint(equalToConstant: 140.widthRatio),
            
            serviceLabel.topAnchor.constraint(equalTo: bookibgLabel.bottomAnchor, constant: 10.heightRatio),
            serviceLabel.leadingAnchor.constraint(equalTo: HairLabel.trailingAnchor, constant: 20.widthRatio),
            serviceLabel.widthAnchor.constraint(equalToConstant: 90.widthRatio),
            serviceLabel.trailingAnchor.constraint(equalTo: appiontmentDetailView.trailingAnchor, constant: -20.widthRatio),
            
            dateLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15.heightRatio),
            dateLabel.leadingAnchor.constraint(equalTo: appiontmentDetailView.leadingAnchor, constant: 50.widthRatio),
            dateLabel.widthAnchor.constraint(equalToConstant: 250.widthRatio),
            
            booktbtn.topAnchor.constraint(equalTo: appiontmentDetailView.bottomAnchor, constant: 60.heightRatio),
            booktbtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50.widthRatio),
            booktbtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.widthRatio),
            booktbtn.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            wrongBtn.topAnchor.constraint(equalTo: booktbtn.bottomAnchor, constant: 10.heightRatio),
            wrongBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50.widthRatio),
            wrongBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.widthRatio),
            wrongBtn.heightAnchor.constraint(equalToConstant: 70.heightRatio),

            
        ])
    }

}
