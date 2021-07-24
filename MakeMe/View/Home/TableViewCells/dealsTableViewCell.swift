//
//  dealsTableViewCell.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 18/07/2021.
//

import UIKit

class dealsTableViewCell: UITableViewCell {

    //MARK:-UI-Elements
   lazy var collectionView : UICollectionView = {
       let layout = UICollectionViewFlowLayout()
       let collectionView = UICollectionView(frame: CGRect.zero,collectionViewLayout: layout)
       layout.scrollDirection = .horizontal
       collectionView.delegate = self
       collectionView.dataSource = self
       collectionView.showsHorizontalScrollIndicator = false
       collectionView.translatesAutoresizingMaskIntoConstraints = false
       layout.estimatedItemSize = .zero
       collectionView.clipsToBounds = false
       collectionView.register(dealsCollectionViewCell.self, forCellWithReuseIdentifier: "dealsCollectionViewCell")
       return collectionView
   }()

   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
       super.init(style: style, reuseIdentifier: reuseIdentifier)
       setUpUI()
    collectionView.backgroundColor = .systemBackground

       
   }
   //MARK:-Helper functions
   func setUpUI(){
       contentView.addSubview(collectionView)
       
       NSLayoutConstraint.activate([
        collectionView.topAnchor.constraint(equalTo: topAnchor),
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor , constant: 20.widthRatio),
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20.widthRatio),
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
           
       ])
   }
   
   
   
   required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
   
}
extension dealsTableViewCell:  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 7
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dealsCollectionViewCell", for: indexPath) as! dealsCollectionViewCell
       return cell
   }
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       return CGSize(width: 200.widthRatio, height: 250.heightRatio)
   }
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       return 15.autoSized
   }

   
}
