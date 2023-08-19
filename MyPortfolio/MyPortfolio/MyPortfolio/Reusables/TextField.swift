//
//  TextField.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class TextField: UITextField {
    init(placeholder: String, isSecureTextEntry: Bool) {
            super.init(frame: .zero)
            leftView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: self.frame.height))
            leftViewMode = .always
            translatesAutoresizingMaskIntoConstraints = false
            //layer.borderWidth = 1
            font = UIFont(name: "", size: 18)
            textColor = .gray
            layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            //layer.cornerRadius = 5
        autocapitalizationType = .none
        autocorrectionType = .no
        self.placeholder = placeholder
        self.isSecureTextEntry = isSecureTextEntry
            attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }


