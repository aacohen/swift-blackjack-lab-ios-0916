//
//  Player.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Player {
    var name: String
    var cards: [Card]
    var handscore: Int {
        var score = 0
        for item in self.cards{
            
        let int = determineCardValue(item.rank)
            let score = score + Int
        }
    var blackJack: Bool
    var busted: Bool
    var stayed: Bool
    var mayHit: Bool
    var tokens: Int
    var description: String { return
        //Make description a calculated property which returns a string detailing the object's current state
    
    init(name: String) {
        self.tokens = 100
        self.name = name
    }
}

}
