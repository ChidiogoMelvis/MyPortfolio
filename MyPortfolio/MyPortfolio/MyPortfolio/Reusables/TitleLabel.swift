//
//  TitleLabel.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class TitleLabel: UILabel {
    
    init(label: String, textColor: UIColor) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.numberOfLines = 10
        self.text = label
        self.textColor = textColor
        self.textAlignment = .center
        self.lineBreakMode = .byWordWrapping
        self.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

