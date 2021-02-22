import Foundation
import XCTest

class SearchPage: UIElementPage<SearchUIElements>, TabBarBlock, NavigationBarBlock {
    
    init(_ app: XCUIApplication) {
        super.init(app: app, root: .root, rootType: .otherElements)
    }
}

enum SearchUIElements: String, UIElement {
    case root = "Search.Screen"
}
