//
//  appiontmentViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 24/07/2021.
//

import UIKit

class clendarAppiontViewController: UIViewController {
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
    var profileView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.9972448945, green: 0.9418284297, blue: 0.9231179357, alpha: 1)
        topView.layer.cornerRadius = 18
        return topView
    }()
    let profileImage = ImageView(image: "bg")
    let nameLabel = label(text: "Kate Johonson", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 15), alignment: .natural)
    let subLabel = label(text: "MakeUp Artist", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10), alignment: .natural)
    let selectButton = button(text: "Select a service", color: .systemOrange, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 0, bgcolor: .clear)
    let BookAppiontmentBtn = button(text: "Book Appoinmtment", color: .white, font: .setFont(FontName: .popins_SemiBold, fontSize: 18), cornerradius: 25, bgcolor: .orange)
    

    override func viewDidLoad() {
        super.viewDidLoad()
         setUpUI()
        view.backgroundColor = .systemBackground
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
        BookAppiontmentBtn.addTarget(self, action: #selector(bookAppionmtmentButtonClicked), for: .touchUpInside)
    }
    @objc func backButtonClicked()
    {
        navigationController?.popViewController(animated: true)
    }
    @objc func bookAppionmtmentButtonClicked()
    {
        let controller = appiontmentConfirmationViewController()
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
        
        view.addSubview(profileView)
        profileView.addSubview(nameLabel)
        profileView.addSubview(subLabel)
        profileView.addSubview(profileImage)
        
        view.addSubview(selectButton)
        view.addSubview(BookAppiontmentBtn)
     
     
        
        //MARK:-Stylingt
        titleLabel.numberOfLines = 0
        profileImage.layer.cornerRadius = 25
       
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
            
            profileView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 20.heightRatio),
            profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.widthRatio),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: -20.widthRatio),
            profileView.heightAnchor.constraint(equalToConstant: 130.heightRatio),
            
            nameLabel.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 20.widthRatio),
            nameLabel.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 35.heightRatio),
            
            subLabel.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 20.widthRatio),
            subLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 1.heightRatio),
            
            profileImage.trailingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: -20.widthRatio),
            profileImage.centerYAnchor.constraint(equalTo: profileView.centerYAnchor),
            profileImage.widthAnchor.constraint(equalToConstant: 50),
            profileImage.heightAnchor.constraint(equalToConstant: 50),
            
            selectButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            selectButton.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 25.heightRatio),
            
            BookAppiontmentBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            BookAppiontmentBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            BookAppiontmentBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50.widthRatio),
            BookAppiontmentBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.widthRatio),
            BookAppiontmentBtn.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
          
        ])
    }
    

   

}
