//
//  HomeViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 17/07/2021.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK:UI-Elements
    var topView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = .systemBackground
        topView.layer.cornerRadius = 18
        return topView
    }()
    var profileImage = ImageView(image: "make")
    var titleLabel = label(text: "Hi, Ruth", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 18), alignment: .natural)
    var bellIconButton : UIButton = {
        let bellButton = UIButton()
        bellButton.setImage(UIImage(named: "alarm"), for: .normal)
        bellButton.translatesAutoresizingMaskIntoConstraints = false
        return bellButton
    }()
    var subTitleLabel = label(text: "Discover beauty professionals", textcolor: #colorLiteral(red: 0.8578482866, green: 0.3262366354, blue: 0.1355837584, alpha: 1), font: .setFont(FontName: .popins_SemiBold, fontSize: 20), alignment: .natural)
    var subTitleLabel1 = label(text: "Find hairstylist makeup artist and more", textcolor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.7385220462), font: .setFont(FontName: .popins_regular, fontSize: 15), alignment: .natural)
    let serachtextField = txtField(text: "Search for a beauty profesional artist or service", textColor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10))
    var serachImage = ImageView(image: "search")
    lazy var  tableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemBackground
        tableView.register(navTopTableViewCell.self, forCellReuseIdentifier: "navTopTableViewCell")
        tableView.register(dealsTableViewCell.self, forCellReuseIdentifier: "dealsTableViewCell")
        tableView.register(userProfileTableViewCell.self, forCellReuseIdentifier: "userProfileTableViewCell")
        tableView.tableFooterView = UIView()
        return tableView
    }()
    //MARK:-Main Function
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        view.backgroundColor = #colorLiteral(red: 0.9528577924, green: 0.9529945254, blue: 0.9528279901, alpha: 0.9358946918)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.profileTapped))
        profileImage.addGestureRecognizer(tap)
        profileImage.isUserInteractionEnabled = true

    }
   @objc func profileTapped()
    {
        let controller = userProfileViewController()
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
    //Helepr Functions
    func setUpUI()
    {
        view.addSubview(tableView)
        view.addSubview(topView)
        topView.addSubview(profileImage)
        topView.addSubview(titleLabel)
        topView.addSubview(bellIconButton)
        topView.addSubview(subTitleLabel)
        topView.addSubview(subTitleLabel1)
        topView.addSubview(serachtextField)
        
        
        //MARK:-Styling
        serachtextField.rightView = serachImage
        serachImage.contentMode = .scaleAspectFit
        profileImage.layer.cornerRadius = 20
        profileImage.contentMode = .scaleAspectFill
        profileImage.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 300.heightRatio),
            
            tableView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            profileImage.topAnchor.constraint(equalTo: topView.topAnchor, constant: 40.heightRatio),
            profileImage.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20.widthRatio),
            profileImage.widthAnchor.constraint(equalToConstant: 40),
            profileImage.heightAnchor.constraint(equalToConstant: 40),
            
            titleLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 12.widthRatio),
            titleLabel.centerYAnchor.constraint(equalTo: profileImage.centerYAnchor),
            
            bellIconButton.centerYAnchor.constraint(equalTo: profileImage.centerYAnchor),
            bellIconButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20.widthRatio),
            bellIconButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            bellIconButton.widthAnchor.constraint(equalToConstant: 40.widthRatio),
            
            subTitleLabel.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 30.heightRatio),
            subTitleLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20.widthRatio),
            subTitleLabel.widthAnchor.constraint(equalTo: subTitleLabel.widthAnchor),
            
            subTitleLabel1.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 5.heightRatio),
            subTitleLabel1.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20.widthRatio),
            subTitleLabel1.widthAnchor.constraint(equalTo: subTitleLabel1.widthAnchor),
            
            serachtextField.topAnchor.constraint(equalTo: subTitleLabel1.bottomAnchor, constant: 10.heightRatio),
            serachtextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20.widthRatio),
            serachtextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -30.widthRatio),
            serachtextField.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            serachImage.heightAnchor.constraint(equalToConstant: 30.heightRatio),
            serachImage.widthAnchor.constraint(equalToConstant: 30.widthRatio),

        ])
    }
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 5
            
        default:
            return 0 
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "navTopTableViewCell", for: indexPath) as! navTopTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "dealsTableViewCell", for: indexPath) as! dealsTableViewCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "userProfileTableViewCell", for: indexPath) as! userProfileTableViewCell
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 200.heightRatio
        case 1:
            return 290.heightRatio
        case 2:
            return 170.heightRatio
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            let HeaderView = headerView()
            HeaderView.dataProvider(headerTitle: "Appiontments", buttonTitle: "View all")
            return HeaderView
        case 1:
            let HeaderView = headerView()
            HeaderView.backgroundColor = .systemBackground
            HeaderView.dataProvider(headerTitle: "Deal", buttonTitle: "")
            return HeaderView
        case 2:
            let HeaderView = headerView()
            HeaderView.dataProvider(headerTitle: "Featured Beauty professionals", buttonTitle: "")
            return HeaderView
        default:
            return UIView()
        }
    }
    
    
}
