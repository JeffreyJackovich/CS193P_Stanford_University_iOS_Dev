//
//  Concentration.swift
//  Concentration
//
//  Created by jeffrey jackovich on 1/11/18.
//  Copyright © 2018 StanfordUniversity. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard = 0
    
    func chooseCard(at index: Int) {
        
        var selectedCard = cards[index]
        print(selectedCard)
        selectedCard.isFaceup = true
        //how to set the selected card to faceUp? only that cards faceUp to true
       
        
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 0...numberOfPairsOfCards {
            let card = Card()
            cards.append(card)
            cards.append(card)
        }
    }
    
    
}
