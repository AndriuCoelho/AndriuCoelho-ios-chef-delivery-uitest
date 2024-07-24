//
//  OnboardingUITests.swift
//  ChefDeliveryUITests
//
//  Created by ALURA on 22/07/24.
//

import XCTest

final class OnboardingUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws { }

    func testOnboardingUI() {
        let app = XCUIApplication()
        app.launch()
        
        let dragButton = app.images["dragButton"]
        
        let startCoordinate = dragButton.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.5))
        let endCoordinate = dragButton.coordinate(withNormalizedOffset: CGVector(dx: 5.0, dy: 0.5))
        startCoordinate.press(forDuration: 0.1, thenDragTo: endCoordinate)
        
        sleep(2)
        
        XCTAssertTrue(app.otherElements["ContentView"].exists, "A 'ContentView' deve ser a primeira tela a ser navegada")
    }
}
