//
//  HomePageViewController.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class HomePageViewController: UIViewController {
    
    let titleLabel = TitleLabel(label: "Hey, I am Melvis \n \n An iOS Developer", textColor: .white)
    
    let myProjects = CallBackButton(image: UIImage(named: ""), label: "My Projects", btnTitleColor: .lightGray, backgroundColor: .clear, radius: 0, imageColor: .clear)
    
    let repositories = CallBackButton(image: UIImage(named: ""), label: "My Repository", btnTitleColor: .lightGray, backgroundColor: .clear, radius: 0, imageColor: .clear)
    
    let aboutMe = CallBackButton(image: UIImage(named: ""), label: "About me", btnTitleColor: .white, backgroundColor: .clear, radius: 0, imageColor: .clear)
    
    let contactDetails = CallBackButton(image: UIImage(named: ""), label: "Contact Details", btnTitleColor: .white, backgroundColor: .clear, radius: 0, imageColor: .clear)
    
    lazy var profileImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "")
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .white
        setPositions()
        configureButtons()
        setupBackgroundColor()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupViews()
        view.backgroundColor = .white
        setPositions()
        configureButtons()
        animateViews()
    }
    
    func configureButtons() {
        
        myProjects.onTap = {
            self.navigateToProjectsScreen()
        }
        
        repositories.onTap = {
            self.navigateToRepositoriesScreen()
        }
        
        aboutMe.onTap = {
            self.navigateToAboutMeScreen()
        }
        contactDetails.onTap = {
            self.navigateToContactDetailsScreen()
        }
        
    }
    
    
    func setupViews() {
        let subviews = [titleLabel, myProjects, repositories, aboutMe, contactDetails, profileImage]
        for subview in subviews {
            view.addSubview(subview)
        }
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            myProjects.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 150),
            myProjects.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            
            repositories.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 150),
            repositories.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            
            aboutMe.topAnchor.constraint(equalTo: myProjects.bottomAnchor, constant: 150),
            aboutMe.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            
            contactDetails.topAnchor.constraint(equalTo: repositories.bottomAnchor, constant: 150),
            contactDetails.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            
            profileImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImage.widthAnchor.constraint(equalToConstant: 150),
            profileImage.heightAnchor.constraint(equalToConstant: 250)
        ])
    }
    
}


