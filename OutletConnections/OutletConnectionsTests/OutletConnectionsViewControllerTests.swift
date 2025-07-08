//
//  OutletConnectionsViewControllerTests.swift
//  OutletConnectionsTests
//
//  Created by Mariana Montoya on 7/8/25.
//

import XCTest
@testable import OutletConnections

final class OutletConnectionsViewControllerTests: XCTestCase {
    func test_outlets_shouldBeConnected() {
        let sut = OutletConnectionsViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label, "label")
        XCTAssertNotNil(sut.button, "button")
    }

}
