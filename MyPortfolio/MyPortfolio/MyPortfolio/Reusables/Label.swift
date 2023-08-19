//
//  Label.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class Label: UILabel {
    
    init(label: String, textColor: UIColor) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.numberOfLines = 10
        self.text = label
        self.textColor = textColor
        self.textAlignment = .center
        self.lineBreakMode = .byWordWrapping
        self.numberOfLines = 10
        self.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

