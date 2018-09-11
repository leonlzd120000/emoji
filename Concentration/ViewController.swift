//
//  ViewController.swift
//  Concentration
//
//  Created by leon on 2018/9/11.
//  Copyright © 2018年 leonlee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount: Int = 0 {
        
        didSet {
             filpCountLabel.text = "Flips:\(flipCount)"
        }
        
    }
    
    @IBOutlet weak var filpCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices : Array<String> = ["🎃","👻","🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        
        flipCount += 1
        
        print(flipCount)
        
        if let cardNumber = cardButtons.index(of: sender){
        
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            
        print("cardNumber = \(cardNumber)")
        
        }else{
            print("chosen card was not in cardButtons!")
        }
        
    }
    
    func flipCard(withEmoji emoji:String,on button:UIButton){
        
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
        
    }

}

