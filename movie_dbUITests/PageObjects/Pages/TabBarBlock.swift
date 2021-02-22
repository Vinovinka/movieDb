import Foundation
import XCTest

//enum movie_dbSearchScreen: String {
//    case searchButton = "Search"
//    case cancelButton = "Cancel"
//    case moviesButton = "Movies"
//
//    var element: XCUIElement {
//        switch self {
//        case .searchButton, .cancelButton, .moviesButton:
//            return XCUIApplication().buttons[self.rawValue]
//        }
//    }
//}

protocol TabBarBlock: Page {
    var searchButton: XCUIElement { get }
    var moviesButton: XCUIElement { get }
}

extension TabBarBlock {
    var searchButton: XCUIElement { return
        wait(app.tabBars.buttons[TabBarBlockUIElements.Button.search])
    }
    var moviesButton: XCUIElement { return
        wait(app.tabBars.buttons[TabBarBlockUIElements.Button.movies])
    }
}

enum TabBarBlockUIElements {
    enum Button {
        static let search = "Search"
        static let movies = "Movies"
    }
}
