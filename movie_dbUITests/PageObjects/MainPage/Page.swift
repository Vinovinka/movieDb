
import Foundation
import XCTest

class Page {
    
    let element: XCUIElement
    let app: XCUIApplication
    
    init(app: XCUIApplication, element: XCUIElement) {
        self.app = app
        self.element = element
        wait(self.element)
    }
    
    @discardableResult
    func wait(_ element: XCUIElement, file: StaticString = #file, line: UInt = #line) -> XCUIElement {
        if !element.waitForExistence(timeout: TestConstant.shortTimeOut) {
            XCTFail("не дождались элемента с идентификатором \(element)",
                    file: file, line: line)
        }
        return element
    }
    
    @discardableResult
    func existenceWait(
        _ element: XCUIElement
    ) -> XCUIElement? {
        if !element.waitForExistence(timeout: TestConstant.elementExistenceTimeout
        ) {
            return nil
        }
        return element
    }

}

protocol UIElement {
    var accessibilityIdentifier: String { get }
}

extension UIElement where Self: RawRepresentable {
    var accessibilityIdentifier: RawValue {
        return self.rawValue
    }
}
