//
//  aboutMakeMeViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 24/07/2021.
//

import UIKit

class aboutMakeMeViewController: UIViewController {
    //MARK:-UI-Elements
    var topView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = .systemBackground
        topView.layer.cornerRadius = 18
        return topView
    }()
    var titleLabel = label(text: "About Makeme", textcolor: .orange, font: .setFont(FontName: .popins_Medium, fontSize: 22), alignment: .natural)
    var bellIconButton : UIButton = {
        let bellButton = UIButton()
        bellButton.setImage(UIImage(systemName: "bell"), for: .normal)
        bellButton.translatesAutoresizingMaskIntoConstraints = false
        bellButton.tintColor = .white
        return bellButton
    }()
    let backButton = button(text: "<", color: .black, font: .setFont(FontName: .popins_regular, fontSize: 25), cornerradius: 0, bgcolor: .clear)
    var containerView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.9607003331, green: 0.9608381391, blue: 0.9606701732, alpha: 1)
        return topView
    }()
    var makeMeDescription = label(text: "Makeme the app that connect both the user and vendor for various services offered by the vendors. The user will be able to view serveral service provider and the the type of product they provide and then in one click they can place oder", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 16), alignment: .natural)
    lazy var  tableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemBackground
        tableView.separatorStyle = .none
        tableView.register(MakeMeTableViewCell.self, forCellReuseIdentifier: "MakeMeTableViewCell")
        tableView.tableFooterView = UIView()
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        view.backgroundColor = .systemBackground
        makeMeDescription.numberOfLines = 0
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
       
    }
    //MARK:Helper function
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
        topView.addSubview(bellIconButton)
        containerView.addSubview(makeMeDescription)
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
        
            containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 430.heightRatio),
            
            topView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 130.heightRatio),
            
            backButton.topAnchor.constraint(equalTo: topView.topAnchor , constant: 15.heightRatio),
            backButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20.widthRatio),
            
            titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30.heightRatio),
            
            bellIconButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            bellIconButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20.widthRatio),
            bellIconButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            bellIconButton.widthAnchor.constraint(equalToConstant: 40.widthRatio),
            
            makeMeDescription.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 55.heightRatio),
            makeMeDescription.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 50.widthRatio),
            makeMeDescription.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50.widthRatio),
            
            tableView.topAnchor.constraint(equalTo: containerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
    
        ])
    }
    

}
extension aboutMakeMeViewController: UITableViewDelegate, UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MakeMeTableViewCell", for: indexPath) as! MakeMeTableViewCell
        cell.accessoryType = .disclosureIndicator
        switch indexPath.row {
        case 0:
            cell.menuLabel.text = "FAQs"
        case 1:
            cell.menuLabel.text = "Privacy"
        case 2:
            cell.menuLabel.text = "Term of Use"
        case 3:
            cell.menuLabel.text = "Contact Us"
        default:
            break
        }
            return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.heightRatio
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = paymentDetailViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
}

