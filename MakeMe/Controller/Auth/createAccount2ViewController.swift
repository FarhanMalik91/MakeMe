//
//  createAccount2ViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 22/07/2021.
//

import UIKit

class createAccount2ViewController: UIViewController {
    //MARK:-UI-Elements
    let containerView : UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .systemBackground
        containerView.layer.cornerRadius = 10
        return containerView
    }()
    let titleLabel = label(text: "Lets create your account", textcolor: .systemYellow, font: .setFont(FontName: .popins_SemiBold, fontSize: 25), alignment: .natural)
    let subLabel = label(text: "We will crete an account for you with all the required information", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 13), alignment: .natural)
    let QuestionLabel = label(text: "What are you interested in?", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 17), alignment: .natural)
    let createAccount = button(text: "Create Account", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 25, bgcolor: .systemYellow)
    
    override func viewDidLoad() {
        super.viewDidLoad()
         setUpUI()
        createAccount.addTarget(self, action: #selector(createAccountBTnClicked), for: .touchUpInside)
         
       
    }
    @objc func createAccountBTnClicked()
    {
        let controller = SuccessAccountViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    func setUpUI()
    {
        view.addSubview(containerView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(subLabel)
        containerView.addSubview(QuestionLabel)
        containerView.addSubview(createAccount)
        

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
            
            QuestionLabel.topAnchor.constraint(equalTo: subLabel.bottomAnchor , constant: 80.heightRatio),
            QuestionLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 30.widthRatio),
           // QuestionLabel.widthAnchor.constraint(equalToConstant: 300.widthRatio),
            createAccount.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -100.heightRatio),
            createAccount.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 50.widthRatio),
            createAccount.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50.widthRatio),
            createAccount.heightAnchor.constraint(equalToConstant: 70.heightRatio),
        
        
        ])
        
    }

}
