//
//  addressViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 22/07/2021.
//

import UIKit

class addressViewController: UIViewController {

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
    let nextButton = button(text: "Next", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 25, bgcolor: .systemYellow)
    let firstNameTF = txtField(text: "Address", textColor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10))
    let secondNameTF = txtField(text: "Zip Code", textColor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10))
    
    override func viewDidLoad() {
        super.viewDidLoad()
         setUpUI()
        nextButton.addTarget(self, action: #selector(createAccountBTnClicked), for: .touchUpInside)
 
    }
    @objc func createAccountBTnClicked()
    {
        let controller = createAccount2ViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    func setUpUI()
    {
        view.addSubview(containerView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(subLabel)
        containerView.addSubview(firstNameTF)
        containerView.addSubview(secondNameTF)
        containerView.addSubview(nextButton)

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
            
           
            nextButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -100.heightRatio),
            nextButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 50.widthRatio),
            nextButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50.widthRatio),
            nextButton.heightAnchor.constraint(equalToConstant: 70.heightRatio),
        
        
        ])
        
    }
}
