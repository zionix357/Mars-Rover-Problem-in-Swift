//
//  Board.swift
//  Mars Rover Problem
//
//  Created by Arthur Rocha on 11/08/16.
//  Copyright © 2016 Arthur Rocha. All rights reserved.
//

import Foundation

class Board {
    
    private var x : Int?
    private var y : Int?
    
    init(pX : Int, pY : Int){
        self.x = pX
        self.y = pY
    }
    
    func setX(pX : Int){
        self.x = pX
    }
    
    func getX() -> Int?{
        return self.x
    }
    
    func setY(pY : Int){
        self.y = pY    }
    
    func getY() -> Int?{
        return self.y
    }
    
}