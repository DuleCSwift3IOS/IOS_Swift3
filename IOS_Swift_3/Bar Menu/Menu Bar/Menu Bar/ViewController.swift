//
//  ViewController.swift
//  Menu Bar
//
//  Created by Dushko Cizaloski on 1/28/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var timer = Timer()
    var getFinishedValue: Int = 0
    
    @IBOutlet var timeLabel: UILabel!
    @IBAction func startTheTime(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.presentTime), userInfo: nil, repeats: true)
    }
    @IBAction func PrintWhenPress(_ sender: Any) {
       // print("The timer is stoped")
        timer.invalidate()
        
    }
    @IBAction func getToNormal(_ sender: Any) {
        
        
        if  getFinishedValue != 210
        {
            timeLabel.text = "210"
        }
        
    }
    @IBAction func minus10(_ sender: Any) {
        
        //var mT =  timeLabel.text
        
        if getFinishedValue > 10
        {
            let minTen = getFinishedValue - 10
            timeLabel.text = String(minTen)
        }
        else
        {
        timeLabel.text = String(getFinishedValue)
        }
        
    }
    
    @IBAction func plusTen(_ sender: Any) {
        
        if getFinishedValue <= Int(timeLabel.text!)!
        {
            let pT = getFinishedValue + 10
            timeLabel.text = String(pT)
        }
        
    }
    func presentTime()
    {
        
        let IntegerTimer = Int(timeLabel.text!)
        
        if IntegerTimer! > 0
        {
            getFinishedValue = IntegerTimer! - 1
        }
        timeLabel.text = String(getFinishedValue)
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

