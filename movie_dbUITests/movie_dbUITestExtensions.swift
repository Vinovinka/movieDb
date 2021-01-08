//
//  movie_dbUITestExtensions.swift
//  movie_dbUITests
//
//  Created by Виктория Виноградова on 05.01.2021.
//

import Foundation
import XCTest

extension movie_dbUITestBase {
    
    func givenAppIsReady() {
        app.buttons["Search"].tap()
        XCTAssert(movie_dbSearchScreen.searchButton.element.isSelected)
    }
    
    func whenIEnter(movie: String) {
        app.searchFields.element(boundBy: 0).tap()
        app.searchFields.element(boundBy: 0).typeText(movie)
    }
    
    func thenIShoulSeeMovie() {
        XCTAssertTrue(app.staticTexts["It Chapter Two"].isEnabled)
    }
}
