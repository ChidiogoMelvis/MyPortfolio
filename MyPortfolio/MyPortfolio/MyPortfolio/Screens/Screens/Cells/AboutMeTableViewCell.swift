//
//  AboutMeTableViewCell.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class AboutMeTableViewCell: UITableViewCell {
    
    let title = TitleLabel(label: "", textColor: .brown)

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupViews()
    }
    
    func setupViews() {
        self.addSubview(title)
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14)
        ])
    }
    
    func configure(label: AboutMe) {
        title.text = label.title
    }

}
