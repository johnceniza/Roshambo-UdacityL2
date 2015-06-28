//
//  ViewController.swift
//  Roshambo-UdacityL2
//
//  Created by John Ceniza on 6/28/15.
//  Copyright (c) 2015 AppDeco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var playerSelection: NSString!
    var gameMaster: gameLogic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //present view using just storyboard
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! resultsViewController
        gameMaster = gameLogic()

        if segue.identifier == "usingRock" {
            //pass data
            controller.matchResultDictionary = gameMaster.executeRound("rock")
        } else if segue.identifier == "usingScissor" {
            //pass data
            controller.matchResultDictionary = gameMaster.executeRound("scissor")
        }
    }

    //present view entirely in code
    @IBAction func paper(sender: UIButton) {
        var controller: resultsViewController

        controller = self.storyboard?.instantiateViewControllerWithIdentifier("resultsViewController") as! resultsViewController
        
        gameMaster = gameLogic()
        
        //pass data
        controller.matchResultDictionary = gameMaster.executeRound("paper")
        presentViewController(controller, animated: true, completion: nil)
    }
    
    //present view using code and storyboard
    @IBAction func scissor(sender: UIButton) {
        performSegueWithIdentifier("usingScissor", sender: self)
    }
}

