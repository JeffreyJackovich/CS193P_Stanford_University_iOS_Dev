//
//  ViewController.swift
//  Concentration
//
//  Created by jeffrey jackovich on 1/11/18.
//  Copyright © 2018 StanfordUniversity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1 ) / 2)
    
    var flipCount = 0 {
        didSet {
            flipCounter.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCounter: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("chosen card not in cardButtons")
        }
    }
    var emojiChoices:Array<String> = ["👻", "🎃", "🐲", "🚀", "🍔", "🥩"]
    
    func updateViewFromModel() {
        
        for index in cardButtons.indices {
            print(cardButtons[index])
        }
    }
    
    func emoji() {
        
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        // flip down
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            // flip up
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            button.setTitle(emoji, for: UIControlState.normal)
        }
    }
}

