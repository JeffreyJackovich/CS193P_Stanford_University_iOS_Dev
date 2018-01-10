//
//  Card.swift
//  ConcentrationSwiftPart1
//
//  Created by jeffrey jackovich on 1/6/18.
//  Copyright © 2018 StanfordUniversity. All rights reserved.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false 
    var identifier: Int
    
    // Fundamental Card aspect:
    //  - figure it's own unique identifier
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
