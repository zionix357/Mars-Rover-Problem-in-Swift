//
//  Rover.swift
//  Mars Rover Problem
//
//  Created by Arthur Rocha on 11/08/16.
//  Copyright © 2016 Arthur Rocha. All rights reserved.
//

import Foundation

class Rover {
    
    //Attributes
    
    private var x : Int?
    private var y : Int?
    private var direction : String?
    private var instructions : String?
    private var board : Board?
    
    //Constructor
    
    init(pX: Int, pY: Int, pDirection: String, pInstructions: String, pBoard : Board){
        self.x = pX
        self.y = pY
        self.direction = pDirection
        self.instructions = pInstructions
        board = pBoard
    }
    
    //Get & Set
    
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
    
    func setDirection(pDirection : String){
        self.direction = pDirection
    }
    
    func getDirection() -> String?{
        return self.direction
    }
    
    func setBoard(pBoard : Board){
        self.board = pBoard
    }
    
    func getBoard() -> Board?{
        return self.board
    }
    
    func setInstructions(pInstrunction : String){
        self.instructions = pInstrunction
    }
    
    func getInstructions() -> String?{
        return self.instructions
    }
    
    //Methods
    
    //Jogar
    
    func game_rover(){
        
        if let instructionsWrapper = instructions{
            for item in instructionsWrapper.characters {
                switch item {
                case Instruction.Left:
                    //Esquerda
                    move_left()
                    break
                case Instruction.Right:
                    //Direita
                    move_right()
                    break
                case Instruction.Move:
                    //Mover
                    moving_forward()
                    break
                default:
                    //Nenhum
                    break
                }
            }
        }else{
            //Está vazio
            print("Nill instructions")
        }
    }
    
    //Mover Frente
    //Assume that the square directly North from (x, y) is (x, y+1).
    func moving_forward(){
        if let directionWrapper = direction, xWrapper = x, yWrapper = y, boardXWrapper = board?.getX(), boardYWrapper = board?.getY(){
            if directionWrapper == Direction.North && yWrapper < boardYWrapper{
                y = yWrapper + 1
            }else if directionWrapper == Direction.East && xWrapper < boardXWrapper{
                x = xWrapper + 1
            }else if directionWrapper == Direction.South && yWrapper > 0{
                y = yWrapper - 1
            }else if directionWrapper == Direction.West && xWrapper > 0{
                x = xWrapper - 1
            }
        }else{
            //Set direction,x,y
            print("Nill direction or x or y")
        }
    }
    
    //Mover Direita 90 Graus
    func move_right(){
        
        if let directionWrapper = direction{
            
            switch directionWrapper {
            case Direction.North:
                //Norte
                direction = Direction.East
                break
            case Direction.East:
                //Leste
                direction = Direction.South
                break
            case Direction.South:
                //Sul
                direction = Direction.West
                break
            case Direction.West:
                //Oeste
                direction = Direction.North
                break
            default:
                //Nenhum
                break
            }
        }else{
            //Nill
            print("Nill direction move right")
        }
        
    }
    
    //Mover Esquerda 90 Graus
    func move_left(){
        if let directionWrapper = direction{
            
            switch directionWrapper {
            case Direction.North:
                //Norte
                direction = Direction.West
                break
            case Direction.East:
                //Leste
                direction = Direction.North
                break
            case Direction.South:
                //Sul
                direction = Direction.East
                break
            case Direction.West:
                //Oeste
                direction = Direction.South
                break
            default:
                //Nenhum
                break
            }
            
        }else{
            //Nill
            print("Nill direction move left")
        }
    }
    
    //Listar
    func output() -> String{
        return "\(x!) \(y!) \(direction!)"
    }
}





















