//
//  AppiointmentsViewController.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 19/07/2021.
//

import UIKit

class AppiointmentsViewController: UIViewController{
    //MARK:-UI-Elements
    
    var firstView1 : UIView!
    var secondVieww2 : UIView!
    
    var topView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.8578482866, green: 0.3262366354, blue: 0.1355837584, alpha: 1)
        topView.layer.cornerRadius = 18
        return topView
    }()
    var bottomView : UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.8578482866, green: 0.3262366354, blue: 0.1355837584, alpha: 1)
        topView.layer.cornerRadius = 18
        return topView
    }()
    var titleLabel = label(text: "Appointments", textcolor: .white, font: .setFont(FontName: .popins_Medium, fontSize: 22), alignment: .natural)
    var bellIconButton : UIButton = {
        let bellButton = UIButton()
        bellButton.setImage(UIImage(systemName: "bell"), for: .normal)
        bellButton.translatesAutoresizingMaskIntoConstraints = false
        bellButton.tintColor = .white
        return bellButton
    }()
  lazy  var segmentController : UISegmentedControl = {
        let segmentController = UISegmentedControl(items: ["Your Appiontments" , "History"])
        segmentController.selectedSegmentIndex = 0
        segmentController.translatesAutoresizingMaskIntoConstraints = false
        segmentController.addTarget(self, action: #selector(segmentControl), for: .valueChanged)
        return segmentController
    }()
    lazy var  tableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemBackground
        tableView.separatorStyle = .none
        tableView.register(PaymentsTableViewCell.self, forCellReuseIdentifier: "PaymentsTableViewCell")
        tableView.tableFooterView = UIView()
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        view.backgroundColor = .systemBackground
        firstView1 = firstVieww()
        secondVieww2 = secondView()
        
      //  setUpController()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
   private func setUpController()
    {
        let VC1 = HomeViewController()
        let VC2 = HomeViewController()
        addChild(VC1)
        addChild(VC2)
        self.view.addSubview(VC1.view)
        self.view.addSubview(VC2.view)
        
        VC1.didMove(toParent: self)
        VC2.didMove(toParent: self)
        
        VC1.view.frame = self.view.bounds
        VC2.view.frame = self.view.bounds
    }
    @objc func segmentControl(){

    }
    func setUpUI()
    {
        view.addSubview(topView)
        topView.addSubview(titleLabel)
        topView.addSubview(bellIconButton)
        topView.addSubview(segmentController)
        view.addSubview(tableView)
        
      
        
        NSLayoutConstraint.activate([
        
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 200.heightRatio),
            
            titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30.heightRatio),
            
            bellIconButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            bellIconButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20.widthRatio),
            bellIconButton.heightAnchor.constraint(equalToConstant: 40.heightRatio),
            bellIconButton.widthAnchor.constraint(equalToConstant: 40.widthRatio),
            
            segmentController.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -10.heightRatio),
            segmentController.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 30.widthRatio),
            segmentController.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -30.widthRatio),
            segmentController.heightAnchor.constraint(equalToConstant: 50.heightRatio),
            
            tableView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
           
        ])
    }


}
extension AppiointmentsViewController: UITableViewDelegate, UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaymentsTableViewCell", for: indexPath) as! PaymentsTableViewCell
          
            return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170.heightRatio
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = paymentDetailViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
}


