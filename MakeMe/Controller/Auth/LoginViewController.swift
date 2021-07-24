//
//  LoginViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 17/07/2021.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK:-UI-ELements
    let containerView : UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = #colorLiteral(red: 0.896671661, green: 0.8062392979, blue: 0.9052868151, alpha: 0.6602097603)
        containerView.layer.cornerRadius = 10
        return containerView
    }()
    let bgImage = ImageView(image: "bg1")
    let titleLabel = label(text: "Welcome Back", textcolor: .white, font: .setFont(FontName: .popins_SemiBold, fontSize: 25), alignment: .natural)
    let subLabel = label(text: "Login to your account and get started", textcolor: .white, font: .setFont(FontName: .popins_regular, fontSize: 16), alignment: .natural)
    let emailTF = txtField(text: "Email", textColor: .white, font: .setFont(FontName: .popins_regular, fontSize: 10))
    let passwordTF = txtField(text: "Email", textColor: .white, font: .setFont(FontName: .popins_regular, fontSize: 10))
    let loginBtn = button(text: "Log in", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 25, bgcolor: .systemYellow)
    let forgetPasswordBtn = button(text: "Forget Password?", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 25, bgcolor: .clear)
    let accountLabel = label(text: "Dont have an account", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 20), alignment: .natural)
    let createAccountBtn = button(text: "Create Account", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 25, bgcolor: .clear)
    var serachImage = ImageView(image: "search")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        style()
        loginBtn.addTarget(self, action: #selector(loginBtnClicked), for: .touchUpInside)

    }
    //Helper Function
    @objc func loginBtnClicked()
    {
        let controller = TabBarViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    func setUpUI()
    {
        view.addSubview(bgImage)
        view.addSubview(containerView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(subLabel)
        containerView.addSubview(emailTF)
        containerView.addSubview(passwordTF)
        containerView.addSubview(loginBtn)
        containerView.addSubview(forgetPasswordBtn)
        containerView.addSubview(accountLabel)
        containerView.addSubview(createAccountBtn)
        
        emailTF.tintColor = .white
        
        
        NSLayoutConstraint.activate([
            bgImage.topAnchor.constraint(equalTo: view.topAnchor),
            bgImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bgImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 860.heightRatio),
 
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 70.heightRatio),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            
            subLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            subLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            
            emailTF.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 50.heightRatio),
            emailTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            emailTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30.widthRatio),
            emailTF.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            passwordTF.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 15.heightRatio),
            passwordTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
            passwordTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30.widthRatio),
            passwordTF.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            loginBtn.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 15.heightRatio),
            loginBtn.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 50.widthRatio),
            loginBtn.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50.widthRatio),
            loginBtn.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            forgetPasswordBtn.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 15.heightRatio),
            forgetPasswordBtn.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            
            accountLabel.topAnchor.constraint(equalTo: forgetPasswordBtn.bottomAnchor, constant: 25.heightRatio),
            accountLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            
            createAccountBtn.topAnchor.constraint(equalTo: accountLabel.bottomAnchor, constant: 10.heightRatio),
            createAccountBtn.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            

        ])
    }
    
    func style()
    {
        bgImage.contentMode = .scaleAspectFill
        
        emailTF.contentMode = .scaleAspectFit
    }
    

   
}
