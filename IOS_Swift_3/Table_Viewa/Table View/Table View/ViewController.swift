//
//  ViewController.swift
//  Table View
//
//  Created by Dushko Cizaloski on 1/31/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellContent = ["Tom", "Josh", "Catherin", "Jim"]
    
   internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }

    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      //let cell : UITableViewCell = UITableViewCell()
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "ViewCell", for: indexPath)
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "ViewCell")
        cell.textLabel?.textColor = UIColor.red
        cell.textLabel?.text = cellContent[indexPath.row]
        return cell
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

