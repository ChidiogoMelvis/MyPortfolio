//
//  Extensions+HomePage.swift
//  MyPortfolio
//
//  Created by Mac on 18/08/2023.
//

import UIKit

extension HomePageViewController {
    
    func setPositionsForTitleLabel() {
        titleLabel.frame = CGRect(x: 0, y: -UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: 50)
    }
    
    func setPositionForMyProject() {
        myProjects.frame = CGRect(x: -UIScreen.main.bounds.width, y: 250, width: 150, height: 70)
    }
    
    func setPositionForRepositories() {
        repositories.frame = CGRect(x: UIScreen.main.bounds.width, y: 250, width: 150, height: 70)
    }
    
    func setPositionForAbout() {
        aboutMe.frame = CGRect(x: -UIScreen.main.bounds.width, y: 450, width: 150, height: 70)
    }
    
    func setPositionForContact() {
        contactDetails.frame = CGRect(x: UIScreen.main.bounds.width, y: 450, width: 150, height: 70)
    }
    
    func animateTitleLabel() {
        UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseInOut, animations: {
            self.titleLabel.frame.origin.y = 100
        }, completion: nil)
    }
    
    func animateMyProject() {
        UIView.animate(withDuration: 1.5, delay: 0.4, options: .curveEaseInOut, animations: {
            self.myProjects.frame.origin.x = 20
        }, completion: nil)
    }
    
    func animateRepositories() {
        UIView.animate(withDuration: 1.5, delay: 0.6, options: .curveEaseInOut, animations: {
                self.repositories.frame.origin.x = self.view.bounds.width - self.repositories.frame.size.width - 20
            }, completion: nil)
    }
    
    func animateAboutMe() {
        UIView.animate(withDuration: 1.5, delay: 0.4, options: .curveEaseInOut, animations: {
            self.aboutMe.frame.origin.x = 20
        }, completion: nil)
    }
    
    func animateContactDetails() {
        UIView.animate(withDuration: 1.5, delay: 0.6, options: .curveEaseInOut, animations: {
                self.contactDetails.frame.origin.x = self.view.bounds.width - self.contactDetails.frame.size.width - 20
            }, completion: nil)
    }
    
}
