//
//  ServiceViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 19/07/2021.
//

import UIKit

class ServiceViewController: UIViewController {
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
    var TitleLabel = label(text: "Find beauty professionals in these Categories", textcolor: #colorLiteral(red: 0.8578482866, green: 0.3262366354, blue: 0.1355837584, alpha: 1), font: .setFont(FontName: .popins_SemiBold, fontSize: 20), alignment: .natural)
    let serachtextField = txtField(text: "Search for a beauty profesional", textColor: .black, font: .setFont(FontName: .popins_regular, fontSize: 10))
    var serachImage = ImageView(image: "search")
    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero,collectionViewLayout: layout)
        layout.scrollDirection = .vertical
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .systemBackground
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(serviceCollectionViewCell.self, forCellWithReuseIdentifier: "serviceCollectionViewCell")
        layout.estimatedItemSize = .zero
        collectionView.clipsToBounds = false
        return collectionView
    }()
    let backButton = button(text: "<", color: .white, font: .setFont(FontName: .popins_regular, fontSize: 25), cornerradius: 0, bgcolor: .clear)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        setUpUI()
    }


    @objc func backButtonPressed()
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
        view.addSubview(topView)
        topView.addSubview(titleLabel)
        topView.addSubview(bellIconButton)
       // topView.addSubview(backButton)
        view.addSubview(TitleLabel)
        view.addSubview(serachtextField)
        view.addSubview(collectionView)
        
        //MARK:-Styling
        serachtextField.rightView = serachImage
        serachImage.contentMode = .scaleAspectFit
        titleLabel.numberOfLines = 0

        NSLayoutConstraint.activate([
            
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 120.heightRatio),
            
            titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30.heightRatio),
            
            bellIconButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            bellIconButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20.widthRatio),
            bellIconButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            bellIconButton.widthAnchor.constraint(equalToConstant: 40.widthRatio),
            
            TitleLabel.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 20.heightRatio),
            TitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25.widthRatio),
            TitleLabel.widthAnchor.constraint(equalToConstant: 300.widthRatio),
            
            serachtextField.topAnchor.constraint(equalTo: TitleLabel.bottomAnchor, constant: 10.heightRatio),
            serachtextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25.widthRatio),
            serachtextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25.widthRatio),
            serachtextField.heightAnchor.constraint(equalToConstant: 55.heightRatio),
            
            serachImage.heightAnchor.constraint(equalToConstant: 30.heightRatio),
            serachImage.widthAnchor.constraint(equalToConstant: 30.widthRatio),
            
            collectionView.topAnchor.constraint(equalTo: serachtextField.bottomAnchor, constant: 20.heightRatio),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.widthRatio),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.widthRatio),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),

        ])
    }
}
extension ServiceViewController : UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "serviceCollectionViewCell", for: indexPath) as! serviceCollectionViewCell
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

