//
//  ViewController.swift
//  Animations
//
//  Created by Dushko Cizaloski on 2/9/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
///Users/dushkocizaloski/Desktop/IOS_Course_For_Swift_3/IOS_Course_Swift_3/Animations/Animations/Animations

import UIKit

class ViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    
    var timer = Timer()
    
    var isAnimated = false
    
     var counter = 1
    
    @IBAction func fadein(_ sender: Any) {
        
        image.alpha = 0
        
        UIView.animate(withDuration: 1, animations: {
        
        self.image.alpha = 1
            
        })
        
        
        
    }
    @IBAction func slidein(_ sender: Any) {
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        UIView.animate(withDuration: 2){
            self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)
        }
    }
    @IBAction func grow(_ sender: Any) {
        
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        UIView.animate(withDuration: 2) {
            self.image.frame = CGRect(x: 100 , y: 220, width: 200, height: 200)
        }
        
    }
    @IBOutlet var imgButton: UIButton!
    @IBAction func goToNextImg(_ sender: Any) {
        
        if isAnimated
        {
            timer.invalidate()
            imgButton.setTitle("Play The Animation", for: [])
            isAnimated = false
        }
        else
        {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.presentTimeAnimation), userInfo: nil, repeats: true)
        imgButton.setTitle("Stop The Animation", for: [])
            isAnimated = true
        }
    }
    
    func presentTimeAnimation()
    {
        
        image.image = UIImage (named: "frame_\(counter)_delay-0.1s.gif")
        
                if counter == 21
                {
                    counter = 0
                    
                }
        counter += 1
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

