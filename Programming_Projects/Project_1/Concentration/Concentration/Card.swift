//
//  Card.swift
//  Concentration
//
//  Created by jeffrey jackovich on 1/11/18.
//  Copyright © 2018 StanfordUniversity. All rights reserved.
//

import Foundation

// Contains Card properties.
struct Card {
    
    var isFaceup =  false
    var isMatched = false
    var identifier: Int?
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
       identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
