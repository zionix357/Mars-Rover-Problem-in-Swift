//
//  BoardTests.swift
//  Mars Rover Problem
//
//  Created by Arthur Rocha on 12/08/16.
//  Copyright © 2016 Arthur Rocha. All rights reserved.
//

import XCTest
@testable import Mars_Rover_Problem

class BoardTests: XCTestCase {
    
    private var board : Board?
    
    override func setUp() {
        super.setUp()
        
        board = Board(pX: 5, pY: 5)
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testNewBoard() {
        XCTAssertEqual(5, board?.getX()!)
        XCTAssertEqual(5, board?.getY()!)
    }
    
    func testFailBoard(){
        XCTAssertEqual(7, board?.getX()!)
        XCTAssertEqual(5, board?.getY()!)
    }
}
