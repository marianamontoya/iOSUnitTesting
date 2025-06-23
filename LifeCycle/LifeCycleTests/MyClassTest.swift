//
//  MyClassTest.swift
//  LifeCycleTests
//
//  Created by Mariana Montoya on 6/9/25.
//

import XCTest

@testable import LifeCycle

final class MyClassTest: XCTestCase {
    
    private var sut: MyClass!
    
    override func setUp() {
        super.setUp()
        sut = MyClass()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_methodOne() {
        sut.methodOne()
    }
    
    func test_methodTwo() { 
        sut.methodTwo()
    }
}
 
