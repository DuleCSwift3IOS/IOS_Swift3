//
//  SecondViewController.swift
//  To Do List
//
//  Created by Dushko Cizaloski on 2/5/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var setValueInTableView: UITextField!
    @IBAction func SetTableViewValues(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items : [String]
        
        if let tempItems = itemsObject as? [String]
        {
            items = tempItems
            items.append(setValueInTableView.text!)
        }
        else
        {
            items = [setValueInTableView.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        setValueInTableView.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    //And this method we allowed when user tap on the return button on the keyboard they are shothing down again
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }


}

