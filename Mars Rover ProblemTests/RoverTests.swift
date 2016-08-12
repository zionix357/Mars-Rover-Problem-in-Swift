//
//  RoverTests.swift
//  Mars Rover Problem
//
//  Created by Arthur Rocha on 12/08/16.
//  Copyright © 2016 Arthur Rocha. All rights reserved.
//

import XCTest
@testable import Mars_Rover_Problem

class RoverTests: XCTestCase {
    
    private var rover : Rover?
    private var board : Board?
    
    override func setUp() {
        super.setUp()
        board = Board(pX: 5, pY: 5)
        rover = Rover(pX: 1, pY: 2, pDirection: "N", pInstructions: "LMLMLMLMM", pBoard: board!)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testNewRover(){
        XCTAssertEqual(1, rover?.getX()!)
        XCTAssertEqual(2, rover?.getY()!)
        XCTAssertEqual("N", rover?.getDirection()!)
    }
    
    func testInstruction(){
        XCTAssertEqual("LMLMLMLMM", rover?.getInstructions()!)
    }
    
    func testFailInstruction(){
        XCTAssertEqual("LMLMLM", rover?.getInstructions()!)
    }
}
