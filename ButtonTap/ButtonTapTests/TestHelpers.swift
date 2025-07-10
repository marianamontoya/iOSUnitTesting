//
//  TestHelpers.swift
//  ButtonTapTests
//
//  Created by Mariana Montoya on 7/10/25.
//

import Foundation
import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}
