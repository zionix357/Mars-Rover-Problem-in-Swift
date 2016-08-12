//
//  MarsRoverController.swift
//  Mars Rover Problem
//
//  Created by Arthur Rocha on 11/08/16.
//  Copyright © 2016 Arthur Rocha. All rights reserved.
//

import UIKit

class MarsRoverController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let input = "5 5 1 2 N LMLMLMLMM 3 3 E MMRMMRMRRM"
        
        let separateInput = input.componentsSeparatedByString(" ")
        
        let board = Board(pX: Int(separateInput[0])!, pY: Int(separateInput[1])!)
        
        let rover = Rover(pX: Int(separateInput[2])!, pY: Int(separateInput[3])!, pDirection: separateInput[4], pInstructions: separateInput[5], pBoard: board)
        
        rover.game_rover()
        
        print(rover.output())
        
        rover.setX(Int(separateInput[6])!)
        rover.setY(Int(separateInput[7])!)
        rover.setDirection(separateInput[8])
        rover.setInstructions(separateInput[9])
        
        rover.game_rover()
        
        print(rover.output())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
