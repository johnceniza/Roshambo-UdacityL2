//
//  gameLogic.swift
//  Roshambo-UdacityL2
//
//  Created by John Ceniza on 6/28/15.
//  Copyright (c) 2015 AppDeco. All rights reserved.
//

import Foundation

class gameLogic {
    
    func executeRound(playerChoice: NSString) -> NSDictionary {
        
        var opponentHand = randomHandValue()
        var matchResult: NSString!
        
        switch playerChoice {
            case "rock":
                switch opponentHand {
                case "rock":
                    matchResult = "Tie"
                case "paper":
                    matchResult = "Lose"
                case "scissor":
                    matchResult = "Win"
                default:
                    break
                }
            case "paper":
                switch opponentHand {
                case "rock":
                    matchResult = "Win"
                case "paper":
                    matchResult = "Tie"
                case "scissor":
                    matchResult = "Lose"
                default:
                    break
            }
            
            case "scissor":
                switch opponentHand {
                case "rock":
                    matchResult = "Lose"
                case "paper":
                    matchResult = "Win"
                case "scissor":
                    matchResult = "Tie"
                default:
                    break
            }
            
            default:
            break
        }
        
        let resultsDictionary = NSDictionary(objects: [playerChoice,opponentHand,matchResult], forKeys: ["playerChoice","opponentChoice","matchResult"])
        return resultsDictionary
    }
    
    func randomHandValue() -> NSString {
        // Generate a random Int32 using arc4Random
        let randomValue = Int(1 + arc4random() % 3)
        
        if randomValue == 1 {
            return "rock"
        } else if randomValue == 2 {
            return "paper"
        } else if randomValue == 3 {
            return "scissor"
        } else {
            //Impossible!
            return "error"
        }
        
    }
    
}