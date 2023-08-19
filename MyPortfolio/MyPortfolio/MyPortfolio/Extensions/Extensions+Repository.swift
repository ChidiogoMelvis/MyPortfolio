//
//  Extensions+Repository.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

extension RepositoryViewController {
    
    @objc func ownerButtonTapped() {
            
        }
    
    func setupUi() {
        view.addSubview(repositoryLabel)
        view.addSubview(ownerButton)
        
        NSLayoutConstraint.activate([
            repositoryLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            repositoryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            
            ownerButton.topAnchor.constraint(equalTo: repositoryLabel.bottomAnchor, constant: 20),
            ownerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14)
            
        ])
        
        ownerButton.addTarget(self, action: #selector(ownerButtonTapped), for: .touchUpInside)
    }
}

