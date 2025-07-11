//
//  TestHelpers.swift
//  AlertTests
//
//  Created by Mariana Montoya on 7/11/25.
//

import XCTest
import UIKit
final class TestHelpers: XCTestCase {
    func tap(_ button: UIButton) {
        button.sendActions(for: .touchUpInside)
    }

}
