//
//  MyPortfolioUITests.swift
//  MyPortfolioUITests
//
//  Created by Mac on 19/08/2023.
//

import XCTest


final class MyPortfolioUITests: XCTestCase {

    override func setUpWithError() throws {
       
        continueAfterFailure = false

        
    }
    
    func testConversionAndSegue() throws {
        let  app = XCUIApplication()
        app.launch()
        let usernameTextFields = app.textFields["email"]
        usernameTextFields.tap()
    
        let loginBtn = app.buttons["Login"]
        XCTAssertTrue(loginBtn.exists)
        loginBtn.tap()
    
        XCTAssertTrue(usernameTextFields.exists)
        
    }

    
    
}

