//
//  DetailAppiontmentsViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 20/07/2021.
//

import UIKit

class DetailAppiontmentsViewController: UIViewController {
    //MARK:-UI-Elements
    var topView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.8578482866, green: 0.3262366354, blue: 0.1355837584, alpha: 1)
        topView.layer.cornerRadius = 18
        return topView
    }()
    var titleLabel = label(text: "Service", textcolor: .white, font: .setFont(FontName: .popins_Medium, fontSize: 22), alignment: .natural)
    var bellIconButton : UIButton = {
        let bellButton = UIButton()
        bellButton.setImage(UIImage(systemName: "bell"), for: .normal)
        bellButton.translatesAutoresizingMaskIntoConstraints = false
        bellButton.tintColor = .white
        return bellButton
    }()
    let serachtextField = txtField(text: "Select stylist you wish to book an appoinment with", textColor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 11))
    let backButton = button(text: "<", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 25), cornerradius: 0, bgcolor: .clear)
    var serachImage = ImageView(image: "search")
    lazy var  tableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemBackground
        tableView.register(userProfileTableViewCell.self, forCellReuseIdentifier: "userProfileTableViewCell")
        tableView.tableFooterView = UIView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         setUpUI()
        view.backgroundColor = .systemBackground
        serachtextField.backgroundColor = .clear
        serachtextField.textColor = .black
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
        
    }
    @objc func backButtonClicked()
    {
        navigationController?.popViewController(animated: true)
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
        view.addSubview(serachtextField)
        view.addSubview(tableView)
        
        //MARK:-Styling
        serachtextField.rightView = serachImage
        serachImage.contentMode = .scaleAspectFit
        titleLabel.numberOfLines = 0

        NSLayoutConstraint.activate([
            
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 120.heightRatio),
            
            backButton.topAnchor.constraint(equalTo: topView.topAnchor , constant: 15.heightRatio),
            backButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20.widthRatio),
            
            titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30.heightRatio),
            
            bellIconButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            bellIconButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20.widthRatio),
            bellIconButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            bellIconButton.widthAnchor.constraint(equalToConstant: 40.widthRatio),
            

            
            serachtextField.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10.heightRatio),
            serachtextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25.widthRatio),
            serachtextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25.widthRatio),
            serachtextField.heightAnchor.constraint(equalToConstant: 80.heightRatio),
           // serachtextField.widthAnchor.constraint(equalToConstant: 100.widthRatio),
            
            serachImage.heightAnchor.constraint(equalToConstant: 30.heightRatio),
            serachImage.widthAnchor.constraint(equalToConstant: 30.widthRatio),
            
            tableView.topAnchor.constraint(equalTo: serachtextField.bottomAnchor, constant: 20.heightRatio),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.widthRatio),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.widthRatio),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
    
        ])
    }
}
extension DetailAppiontmentsViewController: UITableViewDelegate, UITableViewDataSource{
  
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userProfileTableViewCell", for: indexPath) as! userProfileTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170.heightRatio
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contoller = profileViewController()
        navigationController?.pushViewController(contoller, animated: true)
    }
    
    
      
    
}
    


