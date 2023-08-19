//
//  Extensions+Homepage.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit


extension HomePageViewController {
    
    func navigateToProjectsScreen() {
        let projectsVC = MyProjectsViewController()
        navigationController?.pushViewController(projectsVC, animated: true)
    }
    
    func navigateToRepositoriesScreen() {
        let repositoriesVC = RepositoryViewController()
        navigationController?.pushViewController(repositoriesVC, animated: true)
    }
    
    func navigateToAboutMeScreen() {
        let aboutMeVC = AboutMeViewController()
        aboutMeVC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(aboutMeVC, animated: true)
    }
    
    func navigateToContactDetailsScreen() {
        let contactDetailsVC = ContactDetailsViewController()
        navigationController?.pushViewController(contactDetailsVC, animated: true)
    }
    
    func setupBackgroundColor() {
        
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = view.bounds
        view.addSubview(blurView)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.darkGray.cgColor, UIColor.brown.cgColor]
        gradientLayer.frame = view.bounds
        blurView.contentView.layer.addSublayer(gradientLayer)
    }
    
    func setPositions() {
        titleLabel.frame = CGRect(x: 0, y: -UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: 50)
        
        myProjects.frame = CGRect(x: -UIScreen.main.bounds.width, y: 250, width: 130, height: 70)
        
        repositories.frame = CGRect(x: UIScreen.main.bounds.width, y: 250, width: 150, height: 70)
        
        aboutMe.frame = CGRect(x: -UIScreen.main.bounds.width, y: 450, width: 130, height: 70)
        
        contactDetails.frame = CGRect(x: UIScreen.main.bounds.width, y: 450, width: 150, height: 70)
        
        profileImage.frame = CGRect(x: 500, y: UIScreen.main.bounds.height, width: -UIScreen.main.bounds.width, height: 500)
    }
    
    func animateViews() {
        UIView.animate(withDuration: 0.9, delay: 0.3, options: .curveEaseInOut, animations: {
            self.titleLabel.frame.origin.y = 100
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.4, options: .curveEaseInOut, animations: {
            self.myProjects.frame.origin.x = 20
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.6, options: .curveEaseInOut, animations: {
            self.repositories.frame.origin.x = self.view.bounds.width - self.repositories.frame.size.width - 20
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.4, options: .curveEaseInOut, animations: {
            self.aboutMe.frame.origin.x = 20
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.6, options: .curveEaseInOut, animations: {
            self.contactDetails.frame.origin.x = self.view.bounds.width - self.contactDetails.frame.size.width - 20
        }, completion: nil)
        
        UIView.animate(withDuration: 1.7, delay: 0.7, options: .curveEaseInOut, animations: {
            self.profileImage.frame.origin.y = -100
        }, completion: nil)
        
    }
    
}
