//
//  movie_dbUITestBase.swift
//  movie_dbUITests
//
//  Created by Виктория Виноградова on 05.01.2021.
//

import Foundation
import XCTest

class movie_dbUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        app.terminate()
        super.tearDown()
    }
}
