import XCTest

final class AppUITests: XCTestCase {

    func testWelcomeTextAppears() {
        let app = XCUIApplication()
        app.launch()

        let welcomeText = app.staticTexts["🎉 Bem-vindo ao app de modelo!"]
        XCTAssertTrue(welcomeText.exists)
    }
}
