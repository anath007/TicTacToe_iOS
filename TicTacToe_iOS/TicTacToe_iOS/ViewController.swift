//
//  ViewController.swift
//  TicTacToe_iOS
//
//  Created by Akhil Nathoo on 2019-11-23.
//  Copyright © 2019 Akhil Nathoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1;
    
    var gameState=[0,0,0,0,0,0,0,0,0]
    
    
    @IBAction func action(_ sender: AnyObject) {
        if(gameState[sender.tag-1]==0){
            gameState[sender.tag-1]=activePlayer
        if(activePlayer==1)
        {
            sender.setImage(UIImage(named: "Cross.png"), for:UIControl.State())
            activePlayer=2
        }
        else
         {
            sender.setImage(UIImage(named: "Nought.png"), for:UIControl.State())
            activePlayer=1
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

