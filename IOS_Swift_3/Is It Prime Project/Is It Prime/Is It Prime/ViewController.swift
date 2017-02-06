//
//  ViewController.swift
//  Is It Prime
//
//  Created by Dushko Cizaloski on 1/28/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ShowPrime: UILabel!
    @IBOutlet var EnterPrime: UITextField!
    @IBAction func SubmitPrime(_ sender: Any) {
       
        if let EnterString = EnterPrime.text
        {
            let EnterInteger = Int(EnterString)
            
            if let number = EnterInteger
            {
                var isPrime = true
            
                    if number == 1
                        {
                            isPrime = false
                        }
                var i = 2
                while i < number
                {
                    if number % i == 0
                    {
                        isPrime = false
                    }
                    i += 1
                }
                
                if isPrime
                {
                    ShowPrime.text = "\(number) is prime!"
                }
                else
                {
                    ShowPrime.text = "\(number) is not prime"
                }
                
            }
            else
            {
                ShowPrime.text = "Please Enter a positive whole number"
            }
        }
        
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

