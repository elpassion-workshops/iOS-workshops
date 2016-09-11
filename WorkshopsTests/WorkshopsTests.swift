//
//  WorkshopsTests.swift
//  WorkshopsTests
//
//  Created by Marcin Wieclawski on 11/09/16.
//  Copyright © 2016 El Passion. All rights reserved.
//

import XCTest

class WorkshopsTests: XCTestCase {
    
    var number: NSInteger!
    
    override func setUp() {
        super.setUp()
        number = 2 + 2
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCTAssert(number == 4)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
