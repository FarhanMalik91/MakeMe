//
//  MainAuthViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 17/07/2021.
//

import UIKit

class MainAuthViewController: UIViewController {
      //MARK:-UI-Elements
    let bgImage = ImageView(image: "bg1")
    let titleLabel = label(text: "MAKEme", textcolor: .white, font: .setFont(FontName: .popins_Bold, fontSize: 45), alignment: .natural)
    let viewLabel = label(text: "Schedule your beauty appiontment with specialized beauty stylist", textcolor: .white, font: .setFont(FontName: .popins_regular, fontSize: 20), alignment: .center)
    let createAccountbtn = button(text: "Create Account", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 25, bgcolor: .orange)
    let loginBtn = button(text: "Login", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 25, bgcolor: .clear)
    let bottomView : UIView = {
        let bottomView = UIView()
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.backgroundColor = #colorLiteral(red: 0.896671661, green: 0.8062392979, blue: 0.9052868151, alpha: 0.6602097603)
        bottomView.layer.cornerRadius = 10
        return bottomView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
         setUpUI()
         style()
        loginBtn.addTarget(self, action: #selector(loginBtnClicked), for: .touchUpInside)
        createAccountbtn.addTarget(self, action: #selector(createAccountBtnClicked), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    //MARK:-Helper Functions
    @objc func loginBtnClicked()
    {
        let controller = LoginViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    @objc func createAccountBtnClicked()
    {
        let controller = CreateAccountViewController()
        navigationController?.pushViewController(controller, animated: true)
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
        view.addSubview(bgImage)
        view.addSubview(titleLabel)
        view.addSubview(bottomView)
        bottomView.addSubview(viewLabel)
        bottomView.addSubview(createAccountbtn)
        bottomView.addSubview(loginBtn)
 
        NSLayoutConstraint.activate([
            bgImage.topAnchor.constraint(equalTo: view.topAnchor),
            bgImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bgImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 300.heightRatio),
            
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 400.heightRatio),
            
            viewLabel.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 50.heightRatio),
            viewLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 50.widthRatio),
            viewLabel.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -50.widthRatio),
            
            createAccountbtn.topAnchor.constraint(equalTo: viewLabel.bottomAnchor, constant: 50.heightRatio),
            createAccountbtn.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 50.widthRatio),
            createAccountbtn.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -50.widthRatio),
            createAccountbtn.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            loginBtn.topAnchor.constraint(equalTo: createAccountbtn.bottomAnchor, constant: 30.heightRatio),
            loginBtn.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 50.widthRatio),
            loginBtn.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -50.widthRatio),
            loginBtn.heightAnchor.constraint(equalToConstant: 70.heightRatio),
    
        ])
    }
    func style()
    {
        bgImage.contentMode = .scaleAspectFill
        
        viewLabel.numberOfLines = 0
        viewLabel.lineBreakMode = .byWordWrapping
        
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.white.cgColor
    }

   
}
