//
//  ViewController.swift
//  TicTacToeGame
//
//  Created by Dushko Cizaloski on 2/9/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var winnerLabel: UILabel!
    @IBOutlet var playAgainButton: UIButton!
    @IBAction func playAgain(_ sender: Any) {
        
        activePlayer = 1
        
        activeGame = true
        
        gameState = [0,0,0,0,0,0,0,0,0]
        
        
        
        for i in 1..<10
        {
           if let button = self.view.viewWithTag(i) as? UIButton
           {
            button.setImage(nil, for: [])
           }
        }
        
        winnerLabel.isHidden = true
        playAgainButton.isHidden = true
        
        winnerLabel.center = CGPoint(x: winnerLabel.center.x - 500, y: winnerLabel.center.y)
        playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
    }
    
    
    

    @IBOutlet var takeImage: UIButton!
    // 1 is activePlayer1 with cross, 2 is AvtivePlayer2 with nought
    var activePlayer = 1
    
    var activeGame = true
    
    var gameState = [0,0,0,0,0,0,0,0,0] //0-is empty, 1 - cross, 2 - nought
    var winningCombination = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    @IBAction func changeWithPress(_ sender: AnyObject) {
        
        let activePostion = sender.tag - 1
//        takeImage.setImage(UIImage (named: "cross.png"), for: .normal)
        
       if gameState[activePostion] == 0 && activeGame
       {
        
            gameState[activePostion] = activePlayer
        
            if activePlayer == 1
                {
                    sender.setImage(UIImage (named: "cross.png"), for: .normal)
                activePlayer = 2
                }
            else
                {
                    sender.setImage(UIImage (named: "nought.png"), for: .normal)
                activePlayer = 1
                }
            for combination in winningCombination
                {
                    if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]
                    {
                        //We have a winner!
                        
                        activeGame = false
                        winnerLabel.isHidden = false
                        playAgainButton.isHidden = false
                        if gameState[combination[0]] == 1
                        {
                            winnerLabel.text = "Cross has won!"
                        }
                        else
                        {
                            winnerLabel.text = "Noughts has won!"
                        }
                        UIView.animate(withDuration: 1)
                        {
                            self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                            self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                        }
                    }
                    
                    
                    
                }
      }
    }
   
//    @IBAction func changeToImg(_ sender: Any) {
//        /*
//         var button = self.view.viewWithTag(tagNumber) as UIButton
//         button.setTitle("Button Title", forState: UIControlState.Normal)
//         */
 //   takeimg.setImage(UIImage (named: "cross.png"), for: .normal)
//        //takeimg = (self.view.viewWithTag(tagNumber) as! UIButton) as UIView
//        
//        
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        winnerLabel.isHidden = true
        playAgainButton.isHidden = true
        
        winnerLabel.center = CGPoint(x: winnerLabel.center.x - 500, y: winnerLabel.center.y)
        playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

