//
//  SearchPage.swift
//  movie_dbUITests
//
//  Created by Виктория Виноградова on 05.01.2021.
//

import Foundation
import XCTest


enum movie_dbSearchScreen: String {
    case searchButton = "Search"
    case cancelButton = "Cancel"
    case moviesButton = "Movies"
    
    var element: XCUIElement {
        switch self {
        case .searchButton, .cancelButton, .moviesButton:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
