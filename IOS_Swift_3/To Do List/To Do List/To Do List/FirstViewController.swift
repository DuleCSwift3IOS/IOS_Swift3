//
//  FirstViewController.swift
//  To Do List
//
//  Created by Dushko Cizaloski on 2/5/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var items:[String] = []
    
    @IBOutlet var viewTable: UITableView!
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = viewTable.dequeueReusableCell(withIdentifier: "ToDoList", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            //1. remove data from model
            items.remove(at: indexPath.row)
            
            //2. remove row from view
            viewTable.reloadData()
           
            //3. custom method to update your view after removing
            UserDefaults.standard.set(items, forKey: "items")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        
        if let tempItems = itemsObject as? [String]
        {
            items = tempItems
        }

        viewTable.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   


}

