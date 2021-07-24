//
//  profileViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 20/07/2021.
//

import UIKit

class profileViewController: UIViewController {
    //MARK:-UI-Elements
    var topView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.8578482866, green: 0.3262366354, blue: 0.1355837584, alpha: 1)
        topView.layer.cornerRadius = 18
        return topView
    }()
    var titleLabel = label(text: "Profile", textcolor: .white, font: .setFont(FontName: .popins_Medium, fontSize: 22), alignment: .natural)
    var bellIconButton : UIButton = {
        let bellButton = UIButton()
        bellButton.setImage(UIImage(systemName: "bell"), for: .normal)
        bellButton.translatesAutoresizingMaskIntoConstraints = false
        bellButton.tintColor = .white
        return bellButton
    }()
    let backButton = button(text: "<", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 25), cornerradius: 0, bgcolor: .clear)
    let profileImage = ImageView(image: "bg")
    let nameLabel = label(text: "Kate Johonson", textcolor: .white, font: .setFont(FontName: .popins_SemiBold, fontSize: 15), alignment: .natural)
    let subLabel = label(text: "MakeUp Artist", textcolor: .white, font: .setFont(FontName: .popins_regular, fontSize: 10), alignment: .natural)
    let reviewsLabel = label(text: "⭐️ 4.5(11) . 200 miles", textcolor: .yellow, font: .setFont(FontName: .popins_Medium, fontSize: 11), alignment: .natural)
    let AdreesLabel = label(text: "LealMan f332k", textcolor: .white, font: .setFont(FontName: .popins_Medium, fontSize: 11), alignment: .natural)
    let bookButton = button(text: "Book", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 13), cornerradius: 5, bgcolor: .systemBlue)
    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero,collectionViewLayout: layout)
        layout.scrollDirection = .vertical
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .systemBackground
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(profileCollectionViewCell.self, forCellWithReuseIdentifier: "profileCollectionViewCell")
        layout.estimatedItemSize = .zero
        collectionView.clipsToBounds = false
        return collectionView
    }()
    var containerView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.9972448945, green: 0.9418284297, blue: 0.9231179357, alpha: 1)
        return topView
    }()
    lazy  var segmentController : UISegmentedControl = {
          let segmentController = UISegmentedControl(items: ["Service" , "Porfoilo" , "Products" , "Reviews"])
          segmentController.selectedSegmentIndex = 0
        segmentController.backgroundColor = #colorLiteral(red: 0.8578482866, green: 0.3262366354, blue: 0.1355837584, alpha: 1)
          segmentController.translatesAutoresizingMaskIntoConstraints = false
          segmentController.addTarget(self, action: #selector(segmentControl), for: .valueChanged)
          return segmentController
      }()
    let hoursLabel = label(text: "Working Hour", textcolor: .systemOrange, font: .setFont(FontName: .popins_SemiBold, fontSize: 15), alignment: .natural)
    let sundayLabel = label(text: "Monday 10.00AM - 12.00PM", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 15), alignment: .natural)
    let mondayLabel = label(text: "Monday 10.00AM - 12.00PM", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 15), alignment: .natural)
    let tuesdayLabel = label(text: "Monday 10.00AM - 12.00PM", textcolor: .black, font: .setFont(FontName: .popins_SemiBold, fontSize: 15), alignment: .natural)

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        view.backgroundColor = .white
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
        bookButton.addTarget(self, action: #selector(bookButtonClicked), for: .touchUpInside)
    }
    //MARK:-Helper Functions
    @objc func backButtonClicked()
    {
        navigationController?.popViewController(animated: true)
    }
    @objc func bookButtonClicked()
    {
        let controller = clendarAppiontViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    @objc func segmentControl(){
   
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
        view.addSubview(containerView)
        containerView.addSubview(topView)
        topView.addSubview(backButton)
        topView.addSubview(titleLabel)
        topView.addSubview(bellIconButton)
        topView.addSubview(profileImage)
        topView.addSubview(nameLabel)
        topView.addSubview(subLabel)
        topView.addSubview(reviewsLabel)
        topView.addSubview(AdreesLabel)
        topView.addSubview(bookButton)
        containerView.addSubview(hoursLabel)
        containerView.addSubview(sundayLabel)
        containerView.addSubview(mondayLabel)
        //containerView.addSubview(tuesdayLabel)
        
        view.addSubview(segmentController)
        view.addSubview(containerView)
        view.addSubview(collectionView)
        
        
        //MARK:-Stylingt
        titleLabel.numberOfLines = 0
        profileImage.layer.cornerRadius = 65

        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 430.heightRatio),
            
            hoursLabel.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 50.heightRatio),
            hoursLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20.widthRatio),
            
            sundayLabel.topAnchor.constraint(equalTo: hoursLabel.bottomAnchor, constant: 10.heightRatio),
            sundayLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20.widthRatio),
            
            mondayLabel.topAnchor.constraint(equalTo: hoursLabel.bottomAnchor, constant: 10.heightRatio),
            mondayLabel.leadingAnchor.constraint(equalTo: sundayLabel.trailingAnchor, constant: 20.widthRatio),
            
            topView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 300.heightRatio),
            
            backButton.topAnchor.constraint(equalTo: topView.topAnchor , constant: 15.heightRatio),
            backButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20.widthRatio),
            
            titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30.heightRatio),
            
            bellIconButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            bellIconButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20.widthRatio),
            bellIconButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            bellIconButton.widthAnchor.constraint(equalToConstant: 40.widthRatio),
            
            profileImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40.heightRatio),
            profileImage.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 23.widthRatio),
            profileImage.widthAnchor.constraint(equalToConstant: 130),
            profileImage.heightAnchor.constraint(equalToConstant: 130),
            
            nameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 47.heightRatio),
            nameLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 13.widthRatio),
            
            subLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 1.heightRatio),
            subLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 13.widthRatio),
            
            reviewsLabel.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 4.heightRatio),
            reviewsLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 13.widthRatio),
            
            AdreesLabel.topAnchor.constraint(equalTo: reviewsLabel.bottomAnchor, constant: 4.heightRatio),
            AdreesLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 13.widthRatio),
            
            bookButton.topAnchor.constraint(equalTo: AdreesLabel.bottomAnchor, constant: 7.heightRatio),
            bookButton.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 13.widthRatio),
            bookButton.widthAnchor.constraint(equalToConstant: 80.widthRatio),
            bookButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
          
            segmentController.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 20.heightRatio),
            segmentController.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.widthRatio),
            segmentController.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.widthRatio),
            segmentController.heightAnchor.constraint(equalToConstant: 50.heightRatio),
      
            collectionView.topAnchor.constraint(equalTo: segmentController.bottomAnchor, constant: 50.heightRatio),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.widthRatio),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.widthRatio),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}
extension profileViewController : UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "profileCollectionViewCell", for: indexPath) as! profileCollectionViewCell
        cell.updateCellWithTitlteAndImage(index: indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let collectionViewWidth = 450.widthRatio
            let spacing = 15.widthRatio
            let totalWidth = collectionViewWidth - spacing
           
        return CGSize(width: totalWidth / 2, height: 230.heightRatio)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 15.autoSized
        }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = DetailAppiontmentsViewController()
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
}



  


