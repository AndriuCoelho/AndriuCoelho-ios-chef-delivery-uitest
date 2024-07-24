//
//  ChefDeliveryUITests.swift
//  ChefDeliveryUITests
//
//  Created by ALURA on 22/07/24.
//

import XCTest

final class ChefDeliveryUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws { }

    func testRatingFilterButton() throws {
        let app = XCUIApplication()
        app.launch()
        
        let filterMenu = app.buttons["FilterMenu"]
        XCTAssertTrue(filterMenu.exists, "O menu de filtro deve existir")
        filterMenu.tap()
        
        let ratingFilterMenu = app.buttons["RatingFilterButton_3"]
        XCTAssertTrue(ratingFilterMenu.exists, "O botão de filtro de 3 estrelhas deve existir")
        ratingFilterMenu.tap()
    }
}
