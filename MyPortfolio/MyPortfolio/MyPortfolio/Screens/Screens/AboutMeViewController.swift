//
//  AboutMeViewController.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class AboutMeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var aboutMe: [AboutMe] = []
    
    lazy var aboutMeTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(AboutMeTableViewCell.self, forCellReuseIdentifier: "AboutMeTableViewCell")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Skills"
        view.backgroundColor = .white
        setTitleColor()
        setupViews()
    }
    
    func setTitleColor() {
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.brown]
    }

}
