//
//  CreateAccountViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 17/07/2021.
//

import UIKit

class CreateAccountViewController: UIViewController {
    //MARK:-UI-ELements
    let containerView : UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .systemBackground
        containerView.layer.cornerRadius = 10
        return containerView
    }()
    let titleLabel = label(text: "Lets create your account", textcolor: .systemYellow, font: .setFont(FontName: .popins_SemiBold, fontSize: 25), alignment: .natural)
    let subLabel = label(text: "We will crete an account for you with all the required information", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 13), alignment: .natural)
    let firstNameTF = txtField(text: "First Name", textColor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10))
    let secondNameTF = txtField(text: "Second Name", textColor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10))
    let phoneNoTF = txtField(text: "Phone no", textColor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10))
    let passwordTF = txtField(text: "Password", textColor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10))
    let emailTF = txtField(text: "Email", textColor: .white, font: .setFont(FontName: .popins_regular, fontSize: 10))
    let nextButton = button(text: "Next", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 25, bgcolor: .systemYellow)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        style()
        view.backgroundColor = .systemBackground
        nextButton.addTarget(self, action: #selector(nextButtonClicked), for: .touchUpInside)

    }
    //Helper Function
    @objc func nextButtonClicked()
    {
        let controller = addressViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    func setUpUI()
    {
        view.addSubview(containerView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(subLabel)
        containerView.addSubview(firstNameTF)
        containerView.addSubview(secondNameTF)
        containerView.addSubview(emailTF)
        containerView.addSubview(phoneNoTF)
        containerView.addSubview(passwordTF)
        containerView.addSubview(nextButton)
        
        emailTF.tintColor = .white
        
        
        NSLayoutConstraint.activate([
          
            
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            containerView.topAnchor.constraint(equalTo: view.topAnchor),
 
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 150.heightRatio),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            
            subLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            subLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            subLabel.widthAnchor.constraint(equalToConstant: 300.widthRatio),
            
            firstNameTF.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 50.heightRatio),
            firstNameTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            firstNameTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30.widthRatio),
            firstNameTF.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            secondNameTF.topAnchor.constraint(equalTo: firstNameTF.bottomAnchor, constant: 20.heightRatio),
            secondNameTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            secondNameTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30.widthRatio),
            secondNameTF.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            emailTF.topAnchor.constraint(equalTo: secondNameTF.bottomAnchor, constant: 20.heightRatio),
            emailTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            emailTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30.widthRatio),
            emailTF.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            phoneNoTF.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 20.heightRatio),
            phoneNoTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            phoneNoTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30.widthRatio),
            phoneNoTF.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            passwordTF.topAnchor.constraint(equalTo: phoneNoTF.bottomAnchor, constant: 20.heightRatio),
            passwordTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            passwordTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30.widthRatio),
            passwordTF.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            nextButton.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 200.heightRatio),
            nextButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 50.widthRatio),
            nextButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50.widthRatio),
            nextButton.heightAnchor.constraint(equalToConstant: 70.heightRatio),
  
        ])
    }
    
    func style()
    {
    
        emailTF.contentMode = .scaleAspectFit
        
        subLabel.numberOfLines = 0
    }
    

}

