import Foundation
import XCTest

class StepsHelper: CommonTest {
    lazy var moviesPage = MoviesPage(app)
    lazy var searchPage = SearchPage(app)
    
    func givenAppIsReady() {
        moviesPage.searchButton.tap()
        XCTAssert(searchPage.searchButton.isSelected)
    }
    
    func whenIEnter(movie: String) {
        searchPage.searchField.tap()
        searchPage.searchField.typeText(movie)
    }
    
    func thenIShoulSeeMovie() {
        XCTAssertTrue(app.staticTexts["It Chapter Two"].isEnabled)
    }
    
    func getBackToTheMovies() {
        searchPage.moviesButton.tap()
        searchPage.cancelButton.tap()
        XCTAssert(moviesPage.moviesButton.isSelected)
    }
}
