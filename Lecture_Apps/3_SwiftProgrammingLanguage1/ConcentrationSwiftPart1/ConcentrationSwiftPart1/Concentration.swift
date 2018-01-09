//
//  Concentration.swift
//  ConcentrationSwiftPart1
//
//  Created by jeffrey jackovich on 1/6/18.
//  Copyright © 2018 StanfordUniversity. All rights reserved.
//

import Foundation

class Conentration {
    
    // Fundamental's of Concentration:
    // 1. array's of cards
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    // 2. ability to choose a card
    func chooseCard(at index: Int) {
        // ignore all matched cards
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                
                //check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                
                //cards no cards or two cards are faceup
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
    //3. need to know the number of pairs of cards to "add" to Concentration
    init(numberofPairsOfCards: Int) {
        for _ in 1...numberofPairsOfCards {
            let card = Card()
//            print("printing card: \(card)")
            cards.append(card)
            cards.append(card)
        }
        // TODO: Shuffle the cards
//        print("printing cards.count: \(cards.count)")
        for _ in 1...(cards.count) {
            let rand = Int(arc4random_uniform(UInt32(cards.count)))
            cards.append(cards[rand])
        }
        
    }
    
    
}
