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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    //present view using just storyboard
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "usingRock" {
            let controller = segue.destinationViewController as!
            resultsViewController
            
            //pass data
        }
    }

    //present view entirely in code
    @IBAction func paper(sender: UIButton) {
        var controller: resultsViewController

        controller = self.storyboard?.instantiateViewControllerWithIdentifier("resultsViewController") as! resultsViewController
        
        //pass data
        presentViewController(controller, animated: true, completion: nil)
    }
    
    //present view using code and storyboard
    @IBAction func scissor(sender: UIButton) {
        performSegueWithIdentifier("manualModal", sender: self)
    }
}

