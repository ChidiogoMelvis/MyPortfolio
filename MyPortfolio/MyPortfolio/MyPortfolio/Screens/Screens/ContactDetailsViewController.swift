//
//  ContactDetailsViewController.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    let emailLabel = Label(label: "Email address:  "+" agbachichidiogomelvis@gmail.com", textColor: .brown)
    let githubLabelUrl = Label(label: "Github profile: "+"   https://github.com/ChidiogoMelvis", textColor: .brown)
    
    let linkedinURL = "LinkedIn profile:"+"    https://linkedin.com/in/chidiogo-melvis-a-79514\n4210"
    
    let linkedinLabel = Label(label: "", textColor: .brown)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        linkedinLabel.text = "\(linkedinURL)"
        title = "Contact Details"
        setupViews()
        setTitleColor()
    }
    
    func setTitleColor() {
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.brown]
    }
    

    func setupViews() {
        view.addSubview(emailLabel)
        view.addSubview(githubLabelUrl)
        view.addSubview(linkedinLabel)
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            
            githubLabelUrl.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 50),
            githubLabelUrl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            
            linkedinLabel.topAnchor.constraint(equalTo: githubLabelUrl.bottomAnchor, constant: 50),
            linkedinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14)
        ])
    }
}
