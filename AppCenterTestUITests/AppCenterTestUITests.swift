//
//  AppCenterTestUITests.swift
//  AppCenterTestUITests
//
//  Created by Алексей Серёжин on 14.04.2020.
//  Copyright © 2020 Akvelon. All rights reserved.
//

import XCTest

class AppCenterTestUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        let helloWorld = app.staticTexts["Hello, World!"]
        let touched = app.staticTexts["Touched"]
        XCTAssert(helloWorld.exists)
        XCTAssertFalse(touched.exists)

        app.buttons["Button"].tap()

        XCTAssertFalse(helloWorld.exists)
        XCTAssert(touched.exists)

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
