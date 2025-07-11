//
//  ViewControllerTests.swift
//  AlertTests
//
//  Created by Mariana Montoya on 7/11/25.
//

import XCTest
import ViewControllerPresentationSpy
@testable import Alert

final class ViewControllerTests: XCTestCase {
    private var alertVerifier: AlertVerifier!
    private var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        alertVerifier = AlertVerifier()
    }
    
    override func tearDown() {
        alertVerifier = nil
        super.tearDown()
    }
    func test_tappingButton_shouldShowAlert() {
        alertVerifier.verify(
            title: "Do the Thing?",
            message: "Let us know if you want to do the thing",
            animated: true,
            actions: [
                .cancel("Cancel"),
                .default("OK"),
        ],
            preferredStyle: sut
    )
        XCTAssertEqual(alertVerifier.preferredAction?.title, "OK",
            "preferred action")
    }
    
    override func setUp() {
        super.setUp()
        alertVerifier = AlertVerifier()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(
            identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        alertVerifier = nil
        sut = nil
        super.tearDown()
    }
    
    func test_executeAlertAction_withOKButton() throws {
        tap(sut.button)
        
        try alertVerifier.verify(.executeAction(forButton: "OK"))
    }

}
