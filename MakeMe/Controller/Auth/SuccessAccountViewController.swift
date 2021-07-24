//
//  SuccessAccountViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 22/07/2021.
//

import UIKit

class SuccessAccountViewController: UIViewController {
     //MARK:-UI-Elements
    let checkImage = ImageView(image: "checked")
    let titleLabel = label(text: "Account Created", textcolor: .systemYellow, font: .setFont(FontName: .popins_SemiBold, fontSize: 30), alignment: .natural)
    let subLabel = label(text: "Your account has been created you will get a verification email", textcolor: .systemYellow, font: .setFont(FontName: .popins_regular, fontSize: 20), alignment: .natural)
    let getStartedBtn = button(text: "Get Started", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 25, bgcolor: .systemYellow)
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        view.backgroundColor = #colorLiteral(red: 0.9983051419, green: 0.9652155042, blue: 0.9468951821, alpha: 1)
        checkImage.layer.cornerRadius = 65
        checkImage.backgroundColor = .systemBackground
        subLabel.numberOfLines = 0
        getStartedBtn.addTarget(self, action: #selector(getStartedBtnClicked), for: .touchUpInside)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    @objc func getStartedBtnClicked()
    {
        let controller = TabBarViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    func setUpUI()
    {
        view.addSubview(checkImage)
        view.addSubview(titleLabel)
        view.addSubview(subLabel)
        view.addSubview(getStartedBtn)
        
        NSLayoutConstraint.activate([
            checkImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            checkImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 250.heightRatio),
            checkImage.heightAnchor.constraint(equalToConstant: 130),
            checkImage.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.topAnchor.constraint(equalTo: checkImage.bottomAnchor, constant: 40.heightRatio),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            subLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20.heightRatio),
            subLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subLabel.widthAnchor.constraint(equalToConstant: 330.widthRatio),
            
            getStartedBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100.heightRatio),
            getStartedBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 50.widthRatio),
            getStartedBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.widthRatio),
            getStartedBtn.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            
        
        ])
    }

 
}
