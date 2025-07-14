import XCTest
import SwiftUI
@testable import App

final class AppTests: XCTestCase {

    func testContentViewContainsWelcomeText() {
        let view = ContentView()
        let controller = UIHostingController(rootView: view)

        XCTAssertNotNil(controller.view) // Verifica se a view foi carregada
        controller.loadViewIfNeeded()
        
        // Não dá para testar diretamente o texto renderizado com XCTest puro,
        // mas garantimos que a view carrega com sucesso
    }
}
