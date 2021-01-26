import Foundation
import XCTest

class UIElementPage<T: UIElement>: Page {
    
    override init(app: XCUIApplication, element: XCUIElement) {
        super.init(app: app, element: element)
    }
    
    init(app: XCUIApplication, root: T) {
        super.init(app: app, element: app.otherElements[root.accessibilityIdentifier])
    }
    
    init(app: XCUIApplication, root: T, rootType: UIElements.RootType) {
        var rootElement: XCUIElement
        switch rootType {
        case .otherElements:
            rootElement = app.otherElements[root.accessibilityIdentifier]
        case .staticText:
            rootElement = app.staticTexts[root.accessibilityIdentifier]
        case .table:
            rootElement = app.tables[root.accessibilityIdentifier]
        }
        super.init(app: app, element: rootElement)
    }
    
    func label(_ element: T) -> XCUIElement {
        return wait(self.element.staticTexts[element.accessibilityIdentifier].firstMatch)
    }
    
    func textField(_ element: T) -> XCUIElement {
        return wait(self.element.textFields[element.accessibilityIdentifier].firstMatch)
    }
    
    func switchers(_ element: T) -> XCUIElement {
        return wait(self.element.switches[element.accessibilityIdentifier].firstMatch)
    }
    
    func secureTextField(_ element: T) -> XCUIElement {
        return wait(self.element.secureTextFields[element.accessibilityIdentifier].firstMatch)
    }
    
    func textView(_ element: T) -> XCUIElement {
        return wait(self.element.textViews[element.accessibilityIdentifier])
    }
    
    func staticText(_ element: T) -> XCUIElement {
        return wait(self.element.staticTexts[element.accessibilityIdentifier])
    }
    
    func staticText(_ element: String) -> XCUIElement {
        return wait(self.element.staticTexts[element])
    }
    
    func button(_ element: T) -> XCUIElement {
        return wait(self.element.buttons[element.accessibilityIdentifier].firstMatch)
    }
    
    func existanceButton(_ element: T) -> XCUIElement? {
        return existenceWait(self.element.buttons[element.accessibilityIdentifier].firstMatch)
    }
    
    func image(_ element: T) -> XCUIElement {
        return wait(self.element.images[element.accessibilityIdentifier].firstMatch)
    }
    func image(_ name: String) -> XCUIElement {
        return wait(self.element.images[name].firstMatch)
    }
    
    func table(_ element: T) -> XCUIElement {
        return wait(self.element.tables[element.accessibilityIdentifier])
    }
    
    func collection(_ element: T) -> XCUIElement {
        return wait(self.element.collectionViews[element.accessibilityIdentifier])
    }
    
    func otherElement(_ element: T) -> XCUIElement {
        return wait(self.element.otherElements[element.accessibilityIdentifier])
    }
    
    func cells(_ element: T) -> XCUIElement {
        return wait(self.element.cells[element.accessibilityIdentifier])
    }
    
    func firstCell(
        _ element: T
    ) -> XCUIElement {
        return wait(self.element.cells[element.accessibilityIdentifier].firstMatch)
    }
    
    func cellsInTable(_ element: T) -> XCUIElement {
        return wait(app.tables.cells[element.accessibilityIdentifier])
    }
    func cellsInTableContains(_ title: String) -> XCUIElement {
        return wait(app.tables.cells.containing(NSPredicate(format: "identifier BEGINSWITH[c] %@", title)).firstMatch)
    }
    func cellsContains(_ title: String) -> XCUIElement {
        return wait(app.cells.containing(NSPredicate(format: "identifier CONTAINS[c] %@", title)).firstMatch)
    }
    func switchInCell(_ element: T) -> XCUIElement {
        return wait(app.tables.cells[element.accessibilityIdentifier].switches.firstMatch)
    }
    
    func scrollView(_ element: T) -> XCUIElement {
        return wait(app.scrollViews[element.accessibilityIdentifier].firstMatch)
    }
    func collectionView(_ element: T) -> XCUIElement {
        return wait(app.collectionViews[element.accessibilityIdentifier].firstMatch)
    }
    
    func sheets(_ name: String) -> XCUIElement {
        return wait(app.sheets[name])
    }
    
    func links(_ name: String) -> XCUIElement {
        return wait(app.links[name])
    }
    
    func button(_ name: String) -> XCUIElement {
        return wait(app.buttons[name])
    }
    
    func alert (_ name: String) -> XCUIElement {
        return wait(app.alerts[name])
    }
    
    func alertButton(alertName: String, buttonName: String) -> XCUIElement {
        return wait(app.alerts[alertName].buttons[buttonName])
    }
    
    func getSubElement(
        for element: XCUIElement,
        by name: String,
        matching type: XCUIElement.ElementType
    ) -> XCUIElement {
        return wait(element.children(matching: type)[name])
    }
    
    func getAllLabels(element: XCUIElement, matchingElement: XCUIElement.ElementType ) -> [String] {
        var labelsArray: [String] = []
        let allElements = element.children(matching: matchingElement)
            .allElementsBoundByIndex
        for element in allElements {
            labelsArray.append(element.label)
        }
        return labelsArray
    }
    
    func getAllLabels(matchingElement: XCUIElement.ElementType ) -> [String] {
        var labels: [String] = []
        let allElements = app.descendants(matching: matchingElement).allElementsBoundByIndex
        for el in allElements {
            labels.append(el.label)
            print(el.label)
        }
        return labels
    }
}
