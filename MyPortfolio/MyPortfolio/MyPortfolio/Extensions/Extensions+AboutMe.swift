//
//  Extensions+AboutMe.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

extension AboutMeViewController {
    
    func setupViews() {
        view.addSubview(aboutMeTableView)
        
        NSLayoutConstraint.activate([
            aboutMeTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            aboutMeTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            aboutMeTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            aboutMeTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aboutMeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutMeTableViewCell", for: indexPath) as! AboutMeTableViewCell
        let items = aboutMeArray[indexPath.row]
        cell.configure(label: items)
        return cell
    }
}

