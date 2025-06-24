//
//  StoryboardBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Mariana Montoya on 6/24/25.
//

import Testing

@testable import LoadViewControllers

struct StoryboardBasedViewControllerTests {
    
    func test_loading() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut = sb.instantiateViewController(identifier: String(describing: StoryboardBasedViewController.self))
    }
}
