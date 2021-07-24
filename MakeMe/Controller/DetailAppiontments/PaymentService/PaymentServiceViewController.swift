//
//  PaymentServiceViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 24/07/2021.
//

import UIKit

class PaymentServiceViewController: UIViewController {
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
    var selectLabel = label(text: "Your Fee for select service", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 22), alignment: .natural)
    var priceLabel = label(text: "$80", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 35), alignment: .center)
    let payNowBtn = button(text: "Pay now", color: .white, font: .setFont(FontName: .popins_SemiBold, fontSize: 18), cornerradius: 25, bgcolor: .orange)
    let payLaterBtn = button(text: "Pay later", color: .systemOrange, font: .setFont(FontName: .popins_SemiBold, fontSize: 18), cornerradius: 25, bgcolor: .clear)
    var laterPaymentLabel = label(text: "Pay during appiontment", textcolor: .black, font: .setFont(FontName: .popins_regular, fontSize: 18), alignment: .natural)

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        view.backgroundColor = .systemBackground
        priceLabel.layer.cornerRadius = 30
        priceLabel.clipsToBounds = true
        payNowBtn.addTarget(self, action: #selector(payNowBtnClicked), for: .touchUpInside)
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
       
    }
    //MARK:-Helper Functions
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
    //MARK:-Navigation function
    @objc func payNowBtnClicked()
    {
        let controller = SuccessBookingViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    @objc func backButtonClicked()
    {
        navigationController?.popViewController(animated: true)
    }
    
    func setUpUI()
    {
        view.addSubview(topView)
        topView.addSubview(backButton)
        topView.addSubview(titleLabel)
        topView.addSubview(bellIconButton)
        view.addSubview(selectLabel)
        view.addSubview(priceLabel)
        view.addSubview(payNowBtn)
        view.addSubview(payLaterBtn)
        view.addSubview(laterPaymentLabel)
      
        
        //MARK:-Stylingt
        titleLabel.numberOfLines = 0
        priceLabel.backgroundColor = #colorLiteral(red: 0.9972448945, green: 0.9418284297, blue: 0.9231179357, alpha: 1)
        payLaterBtn.layer.borderWidth = 1
        payLaterBtn.layer.borderColor = UIColor.systemOrange.cgColor
        

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

            selectLabel.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 50.heightRatio),
            selectLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            priceLabel.topAnchor.constraint(equalTo: selectLabel.bottomAnchor, constant: 35.heightRatio),
            priceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            priceLabel.widthAnchor.constraint(equalToConstant: 170.widthRatio),
            priceLabel.heightAnchor.constraint(equalToConstant: 170.heightRatio),
            
            payNowBtn.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 50.heightRatio),
            payNowBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50.widthRatio),
            payNowBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.widthRatio),
            payNowBtn.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            payLaterBtn.topAnchor.constraint(equalTo: payNowBtn.bottomAnchor, constant: 25.heightRatio),
            payLaterBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50.widthRatio),
            payLaterBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.widthRatio),
            payLaterBtn.heightAnchor.constraint(equalToConstant: 70.heightRatio),
            
            laterPaymentLabel.topAnchor.constraint(equalTo: payLaterBtn.bottomAnchor, constant: 10.heightRatio),
            laterPaymentLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            
            
            
            
            
        ])
    }
    
    

}
