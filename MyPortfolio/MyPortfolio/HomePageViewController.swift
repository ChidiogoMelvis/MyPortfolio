//
//  HomePageViewController.swift
//  MyPortfolio
//
//  Created by Mac on 17/08/2023.
//

import UIKit

class HomePageViewController: UIViewController {
    
    let titleLabel = Label(label: "Hey, I am Melvis \n \n An iOS Developer", textColor: .white)
    
    let myProjects = Button(image: UIImage(named: ""), label: "My Projects", btnTitleColor: .lightGray, backgroundColor: .clear, radius: 0, imageColor: .clear)
    
    let repositories = Button(image: UIImage(named: ""), label: "My Repositories", btnTitleColor: .lightGray, backgroundColor: .clear, radius: 0, imageColor: .clear)
    
    let aboutMe = Button(image: UIImage(named: ""), label: "About me", btnTitleColor: .gray, backgroundColor: .clear, radius: 0, imageColor: .clear)
    
    let contactDetails = Button(image: UIImage(named: ""), label: "Contact Details", btnTitleColor: .gray, backgroundColor: .clear, radius: 0, imageColor: .clear)
    
    lazy var homePageImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .black
        setPositionsForTitleLabel()
        setPositionForMyProject()
        setPositionForRepositories()
        setPositionForAbout()
        setPositionForContact()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateTitleLabel()
        animateMyProject()
        animateRepositories()
        animateAboutMe()
        animateContactDetails()
    }
    
    
    func setupViews() {
        view.addSubview(homePageImage)
        view.addSubview(titleLabel)
        view.addSubview(myProjects)
        view.addSubview(repositories)
        view.addSubview(aboutMe)
        view.addSubview(contactDetails)
        
        NSLayoutConstraint.activate([
//            homePageImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            homePageImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
//            homePageImage.heightAnchor.constraint(equalToConstant: 200),
//            homePageImage.widthAnchor.constraint(equalToConstant: 200)
        ])
    }

}
