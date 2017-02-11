//
//  ViewController.swift
//  WhatIsTheWeather
//
//  Created by Dushko Cizaloski on 2/7/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var getCityValue: UITextField!
    @IBAction func findCity(_ sender: Any) {
        //This is for show all cityes in all of the world
        //let url = URL(string: "http://www.weather-forecast.com/locations/" + getCityValue.text! + "/forecasts/latest")!
       // let url = URL(string: "http://www.okta-elpe.com/service-stations/" + getCityValue.text!.replacingOccurrences(of: " ", with: "-") + "")
        
        //let url = URL(string: "http://www.weather-forecast.com/locations/" + getCityValue.text!.replacingOccurrences(of: " ", with: "-") + "/forecasts/latest") brake-fluid-dot-3_43674
        //But we must change for show just a weather in greatBritani. Let's go and make a changes
        
       if let url = URL(string: "http://www.onlinesaprevodom.com/publ/filmovi_online/" + getCityValue.text! + "/" + getCityValue.text!.replacingOccurrences(of: "", with: "/") +  "" + getCityValue.text! + "" )
       {
        let request = NSMutableURLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest)
        {
            data, response, error in
            
            var message = ""
            
            if error != nil
            {
                print(error as Any)
            }
            else
            {
                if let unwrappedData = data
                {
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    //var stringSeparator = "Weather Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">"
                    var stringSeparator = "<tr><td style=\"width:100%\" class=\"catsTd\" valign=\"top\" id=\"cid39\"><a href=\"/publ/filmovi_online/avantura/39\" class=\"catNameActive\">"
                    
                    if let contentArray = dataString?.components(separatedBy: stringSeparator)
                    {
                        if contentArray.count > 1
                        {
                            stringSeparator = "</tr></td></a>"
                            
                            let newContentArray = contentArray[1].components(separatedBy: stringSeparator)
                            
                            if newContentArray.count > 1
                            {
                                message = newContentArray[0].replacingOccurrences(of: " ", with: "-")
                                print(message)
                            }
                            
                        }
                    }
                }
            }
            
            if message == ""
            {
                message = "The weather there could't be found. Please try again"
            }
            
            DispatchQueue.main.sync(execute: {
                
                self.showTheWether.text = message
                
            })
        }
        task.resume()
        }
        else
       {
         showTheWether.text = "The weather there could't be found. Please try again"
       }
    }
    @IBOutlet var showTheWether: UILabel!
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

