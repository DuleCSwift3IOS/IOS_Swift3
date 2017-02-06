//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by Dushko Cizaloski on 2/5/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//This method we allowed to us when user tap on the screen the keyborad to be shothing down
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    self.view.endEditing(true)
    
    }
    //And this method we allowed when user tap on the return button on the keyboard they are shothing down again
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

}

