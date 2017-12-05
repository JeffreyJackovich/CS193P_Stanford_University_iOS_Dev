//
//  Card.swift
//  ConcentrationMVC
//
//  Created by jeffrey jackovich on 12/2/17.
//  Copyright © 2017 StanfordUniversity. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
