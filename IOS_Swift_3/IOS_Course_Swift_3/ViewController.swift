//
//  ViewController.swift
//  IOS_Course_Swift_3
//
//  Created by Dushko Cizaloski on 1/22/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var showYears: UILabel!
    
    @IBOutlet var putCatYears: UITextField!
    @IBAction func submitAge(_ sender: Any) {
        let multipleAge: Int = 7
        let showCatYears = Int(putCatYears.text!)! * multipleAge
        showYears.text = String(showCatYears)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

