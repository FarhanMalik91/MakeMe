//
//  SuccessBookingViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 24/07/2021.
//

import UIKit

class SuccessBookingViewController: UIViewController {

    //MARK:-UI-Elements
   let checkImage = ImageView(image: "checked")
   let titleLabel = label(text: "Booking Successful", textcolor: .systemYellow, font: .setFont(FontName: .popins_SemiBold, fontSize: 30), alignment: .natural)
   let subLabel = label(text: "Your appiontment has been successfully booked", textcolor: .systemYellow, font: .setFont(FontName: .popins_regular, fontSize: 20), alignment: .natural)
   let bookingBtn = button(text: "View booking", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 15), cornerradius: 25, bgcolor: .systemYellow)
   override func viewDidLoad() {
       super.viewDidLoad()
       setUpUI()
       view.backgroundColor = #colorLiteral(red: 0.9983051419, green: 0.9652155042, blue: 0.9468951821, alpha: 1)
       checkImage.layer.cornerRadius = 65
       checkImage.backgroundColor = .systemBackground
       subLabel.numberOfLines = 0
       bookingBtn.addTarget(self, action: #selector(getStartedBtnClicked), for: .touchUpInside)
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
   @objc func getStartedBtnClicked()
   {
       let controller = HomeViewController()
       navigationController?.pushViewController(controller, animated: true)

   }
   func setUpUI()
   {
       view.addSubview(checkImage)
       view.addSubview(titleLabel)
       view.addSubview(subLabel)
       view.addSubview(bookingBtn)
       
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
           
           bookingBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100.heightRatio),
           bookingBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 50.widthRatio),
           bookingBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.widthRatio),
           bookingBtn.heightAnchor.constraint(equalToConstant: 70.heightRatio),
           
           
       
       ])
   }


}
