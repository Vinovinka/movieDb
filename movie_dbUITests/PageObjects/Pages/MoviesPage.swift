import Foundation
import XCTest

class MoviesPage: UIElementPage<MoviesUIElements>, TabBarBlock {
    
    init(_ app: XCUIApplication) {
        super.init(app: app, root: .root, rootType: .otherElements)
    }
}


enum MoviesUIElements: String, UIElement {
    case root = "Movies.Screen"
}
