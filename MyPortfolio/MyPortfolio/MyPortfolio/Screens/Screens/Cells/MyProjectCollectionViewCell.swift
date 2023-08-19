//
//  MyProjectCollectionViewCell.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class MyProjectsCollectionViewCell: UICollectionViewCell {
    
    let identifier = "MyProjectsCollectionViewCell"
    
    let myProjectsLabel = TitleLabel(label: "", textColor: .brown)
    
    lazy var myProjectsImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            setupViews()
        }

        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupViews()
        }
    
    func setupViews() {
        self.addSubview(myProjectsImage)
        self.addSubview(myProjectsLabel)
        
        NSLayoutConstraint.activate([
            myProjectsImage.topAnchor.constraint(equalTo: self.topAnchor),
            myProjectsImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            myProjectsImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            myProjectsImage.widthAnchor.constraint(equalToConstant: 300),
            myProjectsImage.heightAnchor.constraint(equalToConstant: 600),
            
            myProjectsLabel.topAnchor.constraint(equalTo: myProjectsImage.bottomAnchor, constant: 40),
           myProjectsLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
    
    func configure(with projects: Projects) {
        myProjectsImage.image = projects.projectImage
        myProjectsLabel.text = projects.projectName
    }
}
