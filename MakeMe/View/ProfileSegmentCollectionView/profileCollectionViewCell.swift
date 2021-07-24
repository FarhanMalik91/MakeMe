//
//  profileCollectionViewCell.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 24/07/2021.
//

import UIKit

class profileCollectionViewCell: UICollectionViewCell {
    
    //MARK:-UI-Elements
    let menuImage = ImageView(image: "")
    let menuName =  label(text: "", textcolor: .white, font: .setFont(FontName: .popins_Medium, fontSize: 13), alignment: .center)
    let containerView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        backgroundColor = .white
        menuImage.contentMode = .scaleAspectFill
    }
  
    //MARK:-Helper Functions
    func setUpUI(){
        addSubview(containerView)
        containerView.addSubview(menuImage)
        containerView.addSubview(menuName)
        shadowDecorate()
        clipsToBounds = true
        
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            

            menuImage.topAnchor.constraint(equalTo: containerView.topAnchor),
            menuImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            menuImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            menuImage.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            
           
            menuName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10.heightRatio),
            menuName.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateCellWithTitlteAndImage(index : Int){
        switch index {
        case 0:
            menuName.text = "👍 15 Likes"
            menuImage.image = UIImage(named: "bg")
            
        case 1:
            menuName.text = "👍 15 Likes"
            menuImage.image = UIImage(named: "bg")
            
        case 2:
            menuName.text = "👍 15 Likes"
            menuImage.image = UIImage(named: "bg1")
            
        case 3:
            menuName.text = "👍 15 Likes"
            menuImage.image = UIImage(named: "bg1")
        case 4:
            menuName.text = "👍 15 Likes"
            menuImage.image = UIImage(named: "bg")
        case 5:
            menuName.text = "👍 15 Likes"
            menuImage.image = UIImage(named: "bg")

        default:
            break
        }
    }
    
    
    
    
}
