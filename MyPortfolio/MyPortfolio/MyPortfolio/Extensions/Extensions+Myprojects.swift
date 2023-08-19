//
//  Extensions+Myprojects.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import UIKit

extension MyProjectsViewController {
    
    func setupViews() {
        view.addSubview(myProjectsCollectionView)
        
        NSLayoutConstraint.activate([
            myProjectsCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            myProjectsCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            myProjectsCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            myProjectsCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30)
        ])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myProjectsArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyProjectsCollectionViewCell", for: indexPath) as! MyProjectsCollectionViewCell
        let items = myProjectsArray[indexPath.row]
        cell.configure(with: items)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 300, height: 600)
    }
    
}


