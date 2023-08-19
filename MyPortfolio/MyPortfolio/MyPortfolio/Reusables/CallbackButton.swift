//
//  CallbackButton.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit


class CallBackButton: UIButton {
    
    var onTap: (() -> Void)?
    
    init(image: UIImage?,label: String, btnTitleColor: UIColor, backgroundColor: UIColor, radius: CGFloat, imageColor: UIColor) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.isUserInteractionEnabled = true
        self.setImage(image, for: .normal)
        self.setTitle(label, for: .normal)
        self.setTitleColor(btnTitleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = radius
        self.tintColor = imageColor
        self.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
          }
    
    @objc private func buttonTapped() {
            onTap?()
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    }
    
   




