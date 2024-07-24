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
    
    func testRestaurantsOrderFlow() {
        let app = XCUIApplication()
        app.launch()
        
        let elementsQuery = app.scrollViews.otherElements
        elementsQuery.buttons["Food Court"].swipeUp()
        
        let selectedRestaurant = elementsQuery.staticTexts["Carbron"]
        XCTAssertTrue(selectedRestaurant.exists, "Deve encontrar o restaurante especificado")
        selectedRestaurant.tap()
        
        elementsQuery.buttons["Costela no bafo, Deliciosa costela assada lentamente, servida com batatas, R$ 26,99"].swipeUp()
        
        let selectedProduct = elementsQuery.staticTexts["Maminha grelhada servida com arroz, farofa e vinagrete"]
        XCTAssertTrue(selectedProduct.exists, "Deve selecionar o produto especificado")
        selectedProduct.tap()
        
        app.staticTexts["Enviar pedido"].tap()
        app.alerts["Chef Delivery"].otherElements.buttons["Ok"].tap()
    }
    
    func testSearchRestaurantByName() {
        let app = XCUIApplication()
        app.launch()
        
        let searchTab = app.tabBars["Tab Bar"].buttons["Busca"]
        XCTAssertTrue(searchTab.exists, "Erro ao selecionar a tab de busca")
        searchTab.tap()
        
        let searchField = app.collectionViews.textFields["Pesquisar em Chef Delivery"]
        XCTAssertTrue(searchField.exists, "O campo de texto deve existir")
        searchField.tap()
        
        searchField.typeText("Casa do Sushi")
        
        let result = app.collectionViews.staticTexts["Casa do Sushi"]
        XCTAssertTrue(result.exists, "O resultado 'Casa do Sushi' deve existir")
        result.tap()
    }
}
