//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Dushko Cizaloski on 1/26/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var EnterNumFingers: UITextField!
    @IBAction func HowManyFingers(_ sender: Any) {
        let getFingers = String(arc4random_uniform(6))
        if EnterNumFingers.text == getFingers

        {
            ShowFingersUp.text = "You're right"
        }
        else  {
            ShowFingersUp.text = "You're wrong.You hold \(getFingers) fingers"
        }
        
    }
    @IBOutlet var ShowFingersUp: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

