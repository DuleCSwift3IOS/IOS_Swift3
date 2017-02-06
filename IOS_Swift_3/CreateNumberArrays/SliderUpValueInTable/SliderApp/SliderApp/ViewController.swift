//
//  ViewController.swift
//  SliderApp
//
//  Created by Dushko Cizaloski on 2/1/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    
    @IBOutlet var setSliderValue: UILabel!
    @IBOutlet var sliderValue: UISlider!
    @IBAction func getSliderValue(_ sender: Any) {
       setSliderValue.text = String(sliderValue.value)
        tableView.reloadData()
    }
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "getSliderValue", for: indexPath)
        cell.textLabel?.text = String((Int(sliderValue.value * 20)) * (indexPath.row + 1))
        return cell
    }
}

