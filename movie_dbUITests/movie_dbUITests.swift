
import XCTest

class movie_dbUITests: movie_dbUITestBase {

    func testMainScreen() {
        XCTAssertTrue(app.buttons["Фильмы"].isEnabled)
        
        XCTAssert(app.tabBars.buttons["Фильмы"].isSelected)
        
        XCTAssertTrue(app.buttons["Поиск"].isEnabled)

        app.buttons["Поиск"].tap()
        
        XCTAssert(app.tabBars.buttons["Поиск"].isSelected)
        
        app.searchFields.element(boundBy: 0).tap()
        
        app.searchFields.element(boundBy: 0).typeText("IT")
        
        XCTAssertTrue(app.staticTexts["It Chapter Two"].isEnabled)

    }
}
