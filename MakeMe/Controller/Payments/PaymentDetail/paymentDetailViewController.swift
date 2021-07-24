//
//  paymentDetailViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 23/07/2021.
//

import UIKit

class paymentDetailViewController: UIViewController {
   //MARK:-UI-Elements
    var topView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.8578482866, green: 0.3262366354, blue: 0.1355837584, alpha: 1)
        topView.layer.cornerRadius = 18
        return topView
    }()
    var titleLabel = label(text: "Payments", textcolor: .white, font: .setFont(FontName: .popins_Medium, fontSize: 22), alignment: .natural)
    var bellIconButton : UIButton = {
        let bellButton = UIButton()
        bellButton.setImage(UIImage(systemName: "bell"), for: .normal)
        bellButton.translatesAutoresizingMaskIntoConstraints = false
        bellButton.tintColor = .white
        return bellButton
    }()
    var oderView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.9685427547, green: 0.9686816335, blue: 0.9685124755, alpha: 1)
        return topView
    }()
    var orderTotalbottomView : UIView = {
        let bottomView = UIView()
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.backgroundColor = .systemBackground
        return bottomView
    }()
    var oderLabel = label(text: "Order", textcolor: .black, font: .setFont(FontName: .popins_Medium, fontSize: 22), alignment: .natural)
    var dateLabel = label(text: "28, May 2021 3.00PM", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 14), alignment: .natural)
    var paidLabel = label(text: "Paid", textcolor: .green, font: .setFont(FontName: .popins_Medium, fontSize: 18), alignment: .natural)
    let backButton = button(text: "<", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 25), cornerradius: 0, bgcolor: .clear)
    lazy var  tableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemBackground
        tableView.register(oderDetailTableViewCell.self, forCellReuseIdentifier: "oderDetailTableViewCell")
        tableView.tableFooterView = UIView()
        return tableView
    }()
    var subTotalLabel = label(text: "Subtotal(1 item)", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 15), alignment: .natural)
    var shipingLabel = label(text: "Shiping", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 15), alignment: .natural)
    var TotalLabel = label(text: "Total", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 15), alignment: .natural)
    var subPriceLabel = label(text: "$146", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 14), alignment: .natural)
    var shipingPriceLabel = label(text: "$10", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 14), alignment: .natural)
    var totalPriceLabel = label(text: "$146", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 14), alignment: .natural)
    
    //MARK:-Main Function
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = . systemBackground
        setUpUI()
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    //MARK:-Helper Functions
    @objc func backButtonClicked()
    {
        navigationController?.popViewController(animated: true)
    }
    func setUpUI()
    {
        view.addSubview(topView)
        topView.addSubview(titleLabel)
        topView.addSubview(bellIconButton)
        topView.addSubview(backButton)
        view.addSubview(oderView)
        oderView.addSubview(oderLabel)
        oderView.addSubview(dateLabel)
        oderView.addSubview(paidLabel)
        view.addSubview(tableView)
        view.addSubview(orderTotalbottomView)
        orderTotalbottomView.addSubview(subTotalLabel)
        orderTotalbottomView.addSubview(shipingLabel)
        orderTotalbottomView.addSubview(TotalLabel)
        orderTotalbottomView.addSubview(subPriceLabel)
        orderTotalbottomView.addSubview(shipingPriceLabel)
        orderTotalbottomView.addSubview(totalPriceLabel)
        
        
        NSLayoutConstraint.activate([
        
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 150.heightRatio),
            
            titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30.heightRatio),
            
            bellIconButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            bellIconButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20.widthRatio),
            bellIconButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            bellIconButton.widthAnchor.constraint(equalToConstant: 40.widthRatio),
            
            backButton.topAnchor.constraint(equalTo: topView.topAnchor , constant: 15.heightRatio),
            backButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20.widthRatio),
            
            oderView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 0),
            oderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            oderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            oderView.heightAnchor.constraint(equalToConstant: 160.heightRatio),
            
            tableView.topAnchor.constraint(equalTo: oderView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.heightAnchor.constraint(equalToConstant: 350.heightRatio),
            
            oderLabel.topAnchor.constraint(equalTo: oderView.topAnchor, constant: 50.heightRatio),
            oderLabel.leadingAnchor.constraint(equalTo: oderView.leadingAnchor, constant: 20.widthRatio),
            
            dateLabel.topAnchor.constraint(equalTo: oderLabel.bottomAnchor, constant: 1.heightRatio),
            dateLabel.leadingAnchor.constraint(equalTo: oderView.leadingAnchor, constant: 20.widthRatio),
            
            paidLabel.centerYAnchor.constraint(equalTo: oderView.centerYAnchor),
            paidLabel.trailingAnchor.constraint(equalTo: oderView.trailingAnchor, constant: -20.widthRatio),
            
            orderTotalbottomView.topAnchor.constraint(equalTo: tableView.bottomAnchor),
            orderTotalbottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            orderTotalbottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            orderTotalbottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            subTotalLabel.topAnchor.constraint(equalTo: orderTotalbottomView.topAnchor, constant: 50.heightRatio),
            subTotalLabel.leadingAnchor.constraint(equalTo: orderTotalbottomView.leadingAnchor, constant: 50.widthRatio),
            
            shipingLabel.topAnchor.constraint(equalTo: subTotalLabel.bottomAnchor, constant: 25.heightRatio),
            shipingLabel.leadingAnchor.constraint(equalTo: orderTotalbottomView.leadingAnchor, constant: 50.widthRatio),
            
            TotalLabel.topAnchor.constraint(equalTo: shipingLabel.bottomAnchor, constant: 25.heightRatio),
            TotalLabel.leadingAnchor.constraint(equalTo: orderTotalbottomView.leadingAnchor, constant: 50.widthRatio),
            
            subPriceLabel.topAnchor.constraint(equalTo: orderTotalbottomView.topAnchor, constant: 50.heightRatio),
            subPriceLabel.trailingAnchor.constraint(equalTo: orderTotalbottomView.trailingAnchor, constant: -30.widthRatio),
            
            shipingPriceLabel.topAnchor.constraint(equalTo: subPriceLabel.bottomAnchor, constant: 25.heightRatio),
            shipingPriceLabel.trailingAnchor.constraint(equalTo: orderTotalbottomView.trailingAnchor, constant: -30.widthRatio),
            
            totalPriceLabel.topAnchor.constraint(equalTo: shipingPriceLabel.bottomAnchor, constant: 25.heightRatio),
            totalPriceLabel.trailingAnchor.constraint(equalTo: orderTotalbottomView.trailingAnchor, constant: -30.widthRatio),
 
        ])
        
    }

}
extension paymentDetailViewController: UITableViewDelegate, UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "oderDetailTableViewCell", for: indexPath) as! oderDetailTableViewCell
            return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350.heightRatio
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = paymentDetailViewController()
        navigationController?.pushViewController(controller, animated: true)
    }

}
