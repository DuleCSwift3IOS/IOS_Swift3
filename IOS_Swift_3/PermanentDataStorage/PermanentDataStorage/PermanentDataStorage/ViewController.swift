//
//  ViewController.swift
//  PermanentDataStorage
//
//  Created by Dushko Cizaloski on 2/4/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var getDataStorage: UITextField!
    @IBAction func setDataStorage(_ sender: Any) {
        
//        let dictionaryObject = UserDefaults.standard.object(forKey: "NSDictionary")
//        
//        if let dictionary = dictionaryObject as? NSDictionary
//        {
//            getDataStorage.text = String(describing: dictionary)
        
        
        UserDefaults.standard.set(getDataStorage.text, forKey: "number")
        
        
//        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let setNumber = UserDefaults.standard.object(forKey: "number")
        if let getNumber = setNumber as? String
        {
            getDataStorage.text = getNumber
        }
//        // Do any additional setup after loading the view, typically from a nib.
//        
//       // UserDefaults.standard.set("Dushko", forKey: "name")
//        let nameObject = UserDefaults.standard.object(forKey: "name")
//        if let name = nameObject as? String
//        {
//        print(name)
//        }
//        
////        let arr = [1,2,3,4]
////        UserDefaults.standard.set(arr, forKey: "array")
//        let arrayObject = UserDefaults.standard.object(forKey: "array")
//        
//        if let array = arrayObject as? NSArray
//        {
//        
//        print(array)
//        }
        
        
        
        //Show the users phones numbers
        
       // let usersPhoneNumbers: NSDictionary = ["duki": "070-574-606", "caki" : "071-434-112"] as NSDictionary
        
        //UserDefaults.standard.set(usersPhoneNumbers,forKey: "NSDictionary")
//        let dictionaryObject = UserDefaults.standard.object(forKey: "NSDictionary")
//        
//        if let dictionary = dictionaryObject as? NSDictionary
//        {
//            print(dictionary)
//        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

