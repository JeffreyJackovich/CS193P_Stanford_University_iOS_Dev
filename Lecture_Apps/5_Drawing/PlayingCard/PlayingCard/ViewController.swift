//
//  ViewController.swift
//  PlayingCard
//
//  Created by jeffrey jackovich on 12/8/17.
//  Copyright © 2017 StanfordUniversity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }

 


}

