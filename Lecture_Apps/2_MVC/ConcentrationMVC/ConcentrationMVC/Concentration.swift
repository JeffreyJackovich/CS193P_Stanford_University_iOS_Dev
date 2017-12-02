//
//  Concentration.swift
//  ConcentrationMVC
//
//  Created by jeffrey jackovich on 12/2/17.
//  Copyright © 2017 StanfordUniversity. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        
    }
    
    init(numberOfPairsOfCards: Int) {
        for identifier in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
    }
}
