//
//  ViewController.swift
//  ConcentrationSwiftPart1
//
//  Created by jeffrey jackovich on 12/31/17.
//  Copyright © 2017 StanfordUniversity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //connect Controller to the Model
   lazy var game = Conentration(numberOfPairsOfCards: numberOfPairsOfCards)
    
    //computed property - read only example i.e. "How many cards do we have?"
    var numberOfPairsOfCards: Int {
        get {
            return (cardButtons.count + 1) / 2
        }
    }

    // methods called after weired up
    // make it optional in the interim
    
    //implicit unwrapped optional
//    let game = Conentration(newGame) {
//
//    }
    
   
    var flipCount = 0 {
            didSet {
                flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    
    @IBAction func startNewGameButton(_ sender: UIButton) {
//        let game = Conentration(numberofPairsOfCards: (cardButtons.count + 1) / 2)
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("chosen card was not in cardButtons")
        }
    }
    
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let card = game.cards[index]
            let button = cardButtons[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
        }
    }
    
    var emojiChoices = ["👻", "🎃", "🚀", "🍔", "⛏", "🥩", "🐲"]
    
    var emojiDictionary = [Int:String]()
    
    func emoji(for card: Card) -> String {
        if emojiDictionary[card.identifier] == nil, emojiChoices.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emojiDictionary[card.identifier] = emojiChoices.remove(at: randomIndex)
        }
        return emojiDictionary[card.identifier] ?? "?"
    }
    
}

