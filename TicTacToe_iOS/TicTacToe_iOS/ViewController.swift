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
    
    let winnerCombo=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    var activeGame=true
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func action(_ sender: AnyObject) {
        if(gameState[sender.tag-1]==0 && activeGame==true){
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
        
        for combo in winnerCombo
        {
            if gameState[combo[0]] != 0 && gameState[combo[0]]==gameState[combo[1]] && gameState[combo[1]]==gameState[combo[2]]
            {
                
                activeGame=false
                if gameState[combo[0]]==1
                {
                    //print ("Cross")
                    label.text="Player one has won!!!"
                }
                else
                {
                    //print ("Nought")
                    label.text="Player two has won!!!"
                }
                
                ResetButton.isHidden=false
                label.isHidden=false
                
            }
            
        }
        activeGame=false
        for i in gameState
        {
             if i==0
             {
                activeGame=true
                break
            }
        }
        if activeGame==false
        {
            label.text="Draw"
            label.isHidden=true;
            ResetButton.isHidden=false
        }
    }
    
    
    @IBOutlet weak var ResetButton: UIButton!
    
    @IBAction func Reset(_ sender: Any) {
        gameState=[0,0,0,0,0,0,0,0,0]
        activeGame=true
        activePlayer=1
        
        ResetButton.isHidden=true
        label.isHidden=true
        
        for i in 1...9
        {
            let button=view.viewWithTag(i) as! UIButton
            button.setImage(nil, for : UIControl.State())
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

