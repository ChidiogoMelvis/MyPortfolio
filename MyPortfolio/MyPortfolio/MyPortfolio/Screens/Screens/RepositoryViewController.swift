//
//  RepositoryViewController.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class RepositoryViewController: UIViewController {
    
    let repositoryLabel = TitleLabel(label: "", textColor: .brown)
    
    let ownerButton = Button(image: UIImage(systemName: ""), label: "", btnTitleColor: .brown, backgroundColor: .clear, radius: 0, imageColor: .clear)
    
    let networkingManager = NetworkingManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Repository"
        view.backgroundColor = .white
        generateData()
        setTitleColor()
        setupUi()
    }
    
    func setTitleColor() {
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.brown]
    }
    
    func generateData() {
        networkingManager.fetchRepositoryDetails { result in
            switch result {
            case .success(let repository):
                DispatchQueue.main.async {
                    self.repositoryLabel.text = repository.name ?? "No Name"
                    if let owner = repository.owner {
                        self.ownerButton.setTitle(owner.login, for: .normal)
                    } else {
                        self.ownerButton.setTitle("No Owner", for: .normal)
                    }
                }
            case .failure(let error):
                print("Error fetching repository details: \(error)")
            }
        }
    }
    
}
