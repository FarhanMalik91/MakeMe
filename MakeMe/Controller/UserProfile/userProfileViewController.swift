//
//  userProfileViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 24/07/2021.
//

import UIKit

class userProfileViewController: UIViewController {

    //MARK:-UI-Elements
    var topView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = .systemBackground
        topView.layer.cornerRadius = 18
        return topView
    }()
    var titleLabel = label(text: "Profile", textcolor: .orange, font: .setFont(FontName: .popins_Medium, fontSize: 22), alignment: .natural)
    var bellIconButton : UIButton = {
        let bellButton = UIButton()
        bellButton.setImage(UIImage(systemName: "bell"), for: .normal)
        bellButton.translatesAutoresizingMaskIntoConstraints = false
        bellButton.tintColor = .white
        return bellButton
    }()
    let backButton = button(text: "X", color: .black, font: .setFont(FontName: .popins_regular, fontSize: 20), cornerradius: 0, bgcolor: .clear)
    let editProfileButton = button(text: "Edit profile", color: .systemOrange, font: .setFont(FontName: .popins_regular, fontSize: 12), cornerradius: 0, bgcolor: .clear)
    var containerView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.9972448945, green: 0.9418284297, blue: 0.9231179357, alpha: 1)
        return topView
    }()
    let profileImage = ImageView(image: "bg")
    var nameLabel = label(text: "Name", textcolor:  #colorLiteral(red: 0.8032929301, green: 0.7922696471, blue: 0.7919464707, alpha: 1), font: .setFont(FontName: .popins_regular, fontSize: 17), alignment: .natural)
    var userNameLabel = label(text: "Farhan malik", textcolor: #colorLiteral(red: 0.5134917498, green: 0.5098564029, blue: 0.5097023249, alpha: 1), font: .setFont(FontName: .popins_regular, fontSize: 18), alignment: .natural)
    var emailLabel = label(text: "Email", textcolor: #colorLiteral(red: 0.8032929301, green: 0.7922696471, blue: 0.7919464707, alpha: 1), font: .setFont(FontName: .popins_regular, fontSize: 22), alignment: .natural)
    var useremailLabel = label(text: "farhan.asim46@gmail.com", textcolor:  #colorLiteral(red: 0.5134917498, green: 0.5098564029, blue: 0.5097023249, alpha: 1), font: .setFont(FontName: .popins_regular, fontSize: 22), alignment: .natural)
    var genderLabel = label(text: "gender", textcolor: #colorLiteral(red: 0.8032929301, green: 0.7922696471, blue: 0.7919464707, alpha: 1), font: .setFont(FontName: .popins_regular, fontSize: 22), alignment: .natural)
    var usergenderLabel = label(text: "Male", textcolor:  #colorLiteral(red: 0.5134917498, green: 0.5098564029, blue: 0.5097023249, alpha: 1), font: .setFont(FontName: .popins_regular, fontSize: 22), alignment: .natural)
    var phoneLabel = label(text: "Phone no", textcolor: #colorLiteral(red: 0.8032929301, green: 0.7922696471, blue: 0.7919464707, alpha: 1), font: .setFont(FontName: .popins_regular, fontSize: 22), alignment: .natural)
    var userphoneLabel = label(text: "03155220628", textcolor:  #colorLiteral(red: 0.5134917498, green: 0.5098564029, blue: 0.5097023249, alpha: 1), font: .setFont(FontName: .popins_regular, fontSize: 22), alignment: .natural)
    var addressLabel = label(text: "Address", textcolor: #colorLiteral(red: 0.8032929301, green: 0.7922696471, blue: 0.7919464707, alpha: 1), font: .setFont(FontName: .popins_regular, fontSize: 22), alignment: .natural)
    var userAddressLabel = label(text: "Mohalla Dupri Thesil Kahuta Dist RWP", textcolor:  #colorLiteral(red: 0.5134917498, green: 0.5098564029, blue: 0.5097023249, alpha: 1), font: .setFont(FontName: .popins_regular, fontSize: 22), alignment: .natural)
    let passwoedButton = button(text: "Change Passowrd", color: .systemOrange, font: .setFont(FontName: .popins_regular, fontSize: 12), cornerradius: 0, bgcolor: .clear)
    let AboutButton = button(text: "About Makeme", color: .black, font: .setFont(FontName: .popins_regular, fontSize: 16), cornerradius: 0, bgcolor: .clear)
    let navigateButton = button(text: ">", color: .black, font: .setFont(FontName: .popins_regular, fontSize: 16), cornerradius: 0, bgcolor: .clear)
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        view.backgroundColor = .systemBackground
        profileImage.layer.cornerRadius = 40
        navigateButton.addTarget(self, action: #selector(navigateButtonClicked), for: .touchUpInside)
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
    }
    //MARK:-Helper function
    @objc func navigateButtonClicked()
    {
        let controller = aboutMakeMeViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    @objc func backButtonClicked()
    {
        navigationController?.popViewController(animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    func setUpUI()
    {
        view.addSubview(containerView)
        containerView.addSubview(topView)
        topView.addSubview(backButton)
        topView.addSubview(titleLabel)
        containerView.addSubview(profileImage)
        containerView.addSubview(editProfileButton)
        containerView.addSubview(nameLabel)
        containerView.addSubview(userNameLabel)
        containerView.addSubview(emailLabel)
        containerView.addSubview(useremailLabel)
        containerView.addSubview(genderLabel)
        containerView.addSubview(usergenderLabel)
        containerView.addSubview(phoneLabel)
        containerView.addSubview(userphoneLabel)
        containerView.addSubview(addressLabel)
        containerView.addSubview(userAddressLabel)
        containerView.addSubview(passwoedButton)
        view.addSubview(AboutButton)
        view.addSubview(navigateButton)
        
        NSLayoutConstraint.activate([
        
            containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 800.heightRatio),
            
            topView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 130.heightRatio),
            
            backButton.topAnchor.constraint(equalTo: topView.topAnchor , constant: 15.heightRatio),
            backButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20.widthRatio),
            
            titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30.heightRatio),
            
            profileImage.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 40.heightRatio),
            profileImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            profileImage.widthAnchor.constraint(equalToConstant: 80),
            profileImage.heightAnchor.constraint(equalToConstant: 80),
            
            editProfileButton.centerYAnchor.constraint(equalTo: profileImage.centerYAnchor),
            editProfileButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30.widthRatio),
            
            profileImage.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 40.heightRatio),
            profileImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            nameLabel.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 10.heightRatio),
            nameLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            userNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 1.heightRatio),
            userNameLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            emailLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 10.heightRatio),
            emailLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            useremailLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 1.heightRatio),
            useremailLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            genderLabel.topAnchor.constraint(equalTo: useremailLabel.bottomAnchor, constant: 10.heightRatio),
            genderLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            usergenderLabel.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 1.heightRatio),
            usergenderLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            phoneLabel.topAnchor.constraint(equalTo: usergenderLabel.bottomAnchor, constant: 10.heightRatio),
            phoneLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            userphoneLabel.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 1.heightRatio),
            userphoneLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            addressLabel.topAnchor.constraint(equalTo: userphoneLabel.bottomAnchor, constant: 10.heightRatio),
            addressLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            userAddressLabel.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 1.heightRatio),
            userAddressLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30.widthRatio),
            
            passwoedButton.topAnchor.constraint(equalTo: userAddressLabel.bottomAnchor, constant: 5.heightRatio),
            passwoedButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 40.widthRatio),
            
            AboutButton.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 50.heightRatio),
            AboutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.widthRatio),
            
            navigateButton.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 50.heightRatio),
            navigateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.widthRatio),
            
            
            
  
        ])
    }
    
    
   
}
