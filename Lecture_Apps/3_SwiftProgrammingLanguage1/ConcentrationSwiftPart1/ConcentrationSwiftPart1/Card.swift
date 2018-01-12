//
//  Card.swift
//  ConcentrationSwiftPart1
//
//  Created by jeffrey jackovich on 1/6/18.
//  Copyright © 2018 StanfordUniversity. All rights reserved.
//

import Foundation

struct Card {
    
    //
    var isFaceUp = false
    var isMatched = false 
    var identifier: Int
    
    private static var identifierFactory = 0
    
    // Returns an 'Int'
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        print("identifierFactory: \(identifierFactory)")
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
