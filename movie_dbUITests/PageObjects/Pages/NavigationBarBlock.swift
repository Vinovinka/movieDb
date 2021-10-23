import Foundation
import XCTest

protocol NavigationBarBlock: Page {
    var searchField: XCUIElement { get }
    var cancelButton: XCUIElement { get }
}

extension NavigationBarBlock {
    var searchField: XCUIElement { return
        wait(app.searchFields.element(boundBy: 0))
    }
    var cancelButton: XCUIElement { return
        wait(app.navigationBars.buttons[NavigationBarBlockUIElements.Button.cancel])
    }
}

enum NavigationBarBlockUIElements {
    enum Button {
        static let cancel = "Cancel"
    }
}
