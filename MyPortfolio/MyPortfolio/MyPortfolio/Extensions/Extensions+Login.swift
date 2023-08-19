//
//  Extensions+Login.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

extension LoginViewController {
    
    func setupViews() {
        view.addSubview(errorLabel)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            errorLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            errorLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            
            usernameTextField.topAnchor.constraint(equalTo: errorLabel.bottomAnchor, constant: 20),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            usernameTextField.heightAnchor.constraint(equalToConstant: 48),
            
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            passwordTextField.heightAnchor.constraint(equalToConstant: 48),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            
        ])
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        let isValid = emailPredicate.evaluate(with: email)
        return isValid
    }
    
    func isValidPassword(_ password: String) -> Bool {
        let passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        let isValid = passwordPredicate.evaluate(with: password)
        return password.count >= 8
    }
    
    
    @objc func loginButtonTapped() {
        guard let email = usernameTextField.text,
              let password = passwordTextField.text else {
            return
        }
        
        if isValidEmail(email) && isValidPassword(password) {
            let vc = HomePageViewController()
            let navigation = UINavigationController(rootViewController: vc)
            navigation.modalPresentationStyle = .fullScreen
            navigation.modalTransitionStyle = .coverVertical
            present(navigation, animated: true, completion: nil)
        } else {
            let error = "invalid email and password"
            errorLabel.text = error
            print("Invalid email or password")
        }
    }
    
    
}

