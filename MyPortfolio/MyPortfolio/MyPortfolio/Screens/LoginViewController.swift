//
//  LoginViewController.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    lazy var errorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        
        return label
    }()
    
    let usernameTextField = TextField(placeholder: "email", isSecureTextEntry: false)
    let passwordTextField = TextField(placeholder: "password", isSecureTextEntry: true)
    
    let loginButton = Button(image: UIImage(systemName: ""), label: "Login", btnTitleColor: .gray, backgroundColor: .clear, radius: 8, imageColor: .clear)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .white
        title = "Login"
        setTitleColor()
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    func setTitleColor() {
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.gray]
    }
    
}
