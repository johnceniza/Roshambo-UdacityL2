//
//  resultsViewController.swift
//  Roshambo-UdacityL2
//
//  Created by John Ceniza on 6/28/15.
//  Copyright (c) 2015 AppDeco. All rights reserved.
//

import UIKit

class resultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func playAgain(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
