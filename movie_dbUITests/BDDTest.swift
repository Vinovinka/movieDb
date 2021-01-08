//
//  BDDTest.swift
//  movie_dbUITests
//
//  Created by Виктория Виноградова on 05.01.2021.
//

import Foundation
import XCTest

class BDDTest: movie_dbUITestBase {
    
    func testSearchMovieInBddStyle() {
        Report.test("1", "Поиск фильма в базе") {}
        
        Report.step("проверяем, что открыт экран поиска") {
            givenAppIsReady()
        }
        
        Report.step("вводим искомое значение в поле поиска") {
            whenIEnter(movie: "It")
        }
        
        Report.step("проверяем, что поиск выдал нужное значение") {
            thenIShoulSeeMovie()
        }

    }
}

