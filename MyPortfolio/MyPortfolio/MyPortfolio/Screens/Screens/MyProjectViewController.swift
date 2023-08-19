//
//  MyProjectViewController.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

class MyProjectsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var myProjects: [Projects] = []
   
    lazy var myProjectsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 80
        layout.minimumLineSpacing = 80
        layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MyProjectsCollectionViewCell.self, forCellWithReuseIdentifier: "MyProjectsCollectionViewCell")
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Projects"
        view.backgroundColor = .white
        setupViews()
    }
    

}
