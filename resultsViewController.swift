//
//  resultsViewController.swift
//  Roshambo-UdacityL2
//
//  Created by John Ceniza on 6/28/15.
//  Copyright (c) 2015 AppDeco. All rights reserved.
//

import UIKit

class resultsViewController: UIViewController {
    var matchResultDictionary: NSDictionary!
    
    @IBOutlet weak var playerSelectionImage: UIImageView!
    @IBOutlet weak var computerSelectionImage: UIImageView!
    @IBOutlet weak var winLoseImage: UIImageView!
    @IBOutlet weak var winLoseLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("results: %@", matchResultDictionary)
        
        var playerChoice = matchResultDictionary.objectForKey("playerChoice") as! NSString
        var opponentChoice = matchResultDictionary.objectForKey("opponentChoice") as! NSString
        
        playerSelectionImage.image = UIImage(named: (playerChoice as String))
        computerSelectionImage.image = UIImage(named: (opponentChoice as String))
        winLoseImage.image = UIImage(named: matchResultDictionary.objectForKey("resultImage") as! String)
        
        if matchResultDictionary.objectForKey("matchResult") as! NSString == "Win" {
            winLoseLabel.text = "You Win!"
        } else if matchResultDictionary.objectForKey("matchResult") as! NSString == "Lose" {
            winLoseLabel.text = "You Lose!"
        } else if matchResultDictionary.objectForKey("matchResult") as! NSString == "Tie" {
            winLoseLabel.text = "It's a Tie!"
        } else {
            //Impossible!
        }
    }
    
    @IBAction func playAgain(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
