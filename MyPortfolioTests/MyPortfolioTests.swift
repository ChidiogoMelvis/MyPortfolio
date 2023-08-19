//
//  MyPortfolioTests.swift
//  MyPortfolioTests
//
//  Created by Mac on 19/08/2023.
//

import XCTest
@testable import MyPortfolio

final class MyPortfolioTests: XCTestCase {

    func testNumberOfItemsInSection() {
           let dataSource = MyProjectsViewController()
        dataSource.myProjects = myProjectsArray
           
           let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
           let numberOfItems = dataSource.collectionView(collectionView, numberOfItemsInSection: 1)
           
        XCTAssertEqual(numberOfItems, myProjectsArray.count)
       }

       func testCellForItemAtIndexPath() {
           let dataSource = MyProjectsViewController()
           let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
           collectionView.register(MyProjectsCollectionViewCell.self, forCellWithReuseIdentifier: "MyProjectsCollectionViewCell")
           dataSource.myProjects = myProjectsArray

           let indexPath = IndexPath(item: 0, section: 0)
           let cell = dataSource.collectionView(collectionView, cellForItemAt: indexPath) as! MyProjectsCollectionViewCell

           XCTAssertEqual(cell.myProjectsImage.image, UIImage(named: "projectSeven"))
       }
}
