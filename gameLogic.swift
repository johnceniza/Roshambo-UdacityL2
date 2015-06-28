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
        var imageToShow: NSString!

        switch playerChoice {
            case "rock":
                switch opponentHand {
                case "rock":
                    matchResult = "Tie"
                    imageToShow = "itsATie"
                case "paper":
                    matchResult = "Lose"
                    imageToShow = "PaperCoversRock"
                case "scissors":
                    matchResult = "Win"
                    imageToShow = "RockCrushesScissors"
                default:
                    break
                }
            case "paper":
                switch opponentHand {
                case "rock":
                    matchResult = "Win"
                    imageToShow = "PaperCoversRock"
                case "paper":
                    matchResult = "Tie"
                    imageToShow = "itsATie"
                case "scissors":
                    matchResult = "Lose"
                    imageToShow = "ScissorsCutPaper"
                default:
                    break
            }
            case "scissors":
                switch opponentHand {
                case "rock":
                    matchResult = "Lose"
                    imageToShow = "RockCrushesScissors"
                case "paper":
                    matchResult = "Win"
                    imageToShow = "ScissorsCutPaper"
                case "scissors":
                    matchResult = "Tie"
                    imageToShow = "itsATie"
                default:
                    break
            }
            
            default:
            break
        }
        
        let resultsDictionary = NSDictionary(objects: [playerChoice,opponentHand,matchResult,imageToShow], forKeys: ["playerChoice","opponentChoice","matchResult","resultImage"])
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
            return "scissors"
        } else {
            //Impossible!
            return "error"
        }
        
    }
    
}