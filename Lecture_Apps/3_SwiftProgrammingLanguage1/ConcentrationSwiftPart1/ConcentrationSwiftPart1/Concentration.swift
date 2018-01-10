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
    private(set) var cards = [Card]()
    
    //computed property - get/set example i.e. "
    private var indexOfOneAndOnlyFaceUpCard: Int? {
        get {
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFaceUp  {
                    if foundIndex == nil {
                        // if found first card
                        foundIndex = index
                    } else {
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set {
            // check all cards to verify if faceUp. turn all cards faceDown except the card at newIndex
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    
    // 2. ability to choose a card
    func chooseCard(at index: Int) {
        //assertion example
        assert(cards.indices.contains(index), "Concentration.chooseCard(at: \(index)): chosen index not in the cards")
        // ignore all matched cards
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                
                //check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true    
            } else {
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
    //3. need to know the number of pairs of cards to "add" to Concentration
    init(numberOfPairsOfCards: Int) {
        //assertion example
        assert(numberOfPairsOfCards > 0, "Concentration.init(\(numberOfPairsOfCards)): you must have at least one pair of cards")
        for _ in 1...numberOfPairsOfCards {
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
