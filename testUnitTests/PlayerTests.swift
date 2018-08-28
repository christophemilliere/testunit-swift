//
//  PlayerTests.swift
//  testUnitTests
//
//  Created by Christophe on 28/08/2018.
//  Copyright © 2018 Christophe. All rights reserved.
//

import XCTest
@testable import testUnit

class PlayerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUpdateLevelAutomatically() {
        let player = Player()
        XCTAssertEqual(player.getLevel(), 1)
        player.changeScore(newScore: 15)
        XCTAssertEqual(player.getLevel(), 2)
        player.changeScore(newScore: 25)
        XCTAssertEqual(player.getLevel(), 3)
        player.changeScore(newScore: 12)
        XCTAssertEqual(player.getLevel(), 2)
        player.changeScore(newScore: 35)
        XCTAssertEqual(player.getLevel(), 4)
        player.changeScore(newScore: 350)
        XCTAssertEqual(player.getLevel(), 4)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
