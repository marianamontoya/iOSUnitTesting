//
//  ViewControllerTests.swift
//  ButtonTapTests
//
//  Created by Mariana Montoya on 7/10/25.
//

import XCTest
@testable import ButtonTap

final class ViewControllerTests: XCTestCase {

    func testing_tappingButton(){
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        sut.button.sendActions(for: .touchUpInside)
    }
    func tap(_ button: UIBarButtonItem) {
        _ = button.target?.perform(button.action, with: nil)
    }

}
