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
    var cards: [Card] = []
    var handscore: Int {
        var score = 0
        var aceCount = 0
        for item in self.cards {
            
            if (item.rank == "A") {
                aceCount += 1
            }
            else {
                let cardValue = item.determineCardValue(rank: item.rank)
                score = score + cardValue
            }
        }
        var aceScore = 11 * aceCount
        for _ in 0..<aceCount {
            if score + aceScore > 21 {
                aceScore -= 10
            }
        }
        return score + aceScore
    }
    
       
    
    
    //TODO: how to take into account two aces
    
    var blackjack: Bool { return self.cards.count == 2 && handscore == 21 }
    var busted: Bool { return handscore > 21 }
    var stayed: Bool = false
    var mayHit: Bool { return !busted && !stayed && !blackjack || cards.count == 0 }
    var tokens: UInt
    var description: String { return "" }
        //Make description a calculated property which returns a string detailing the object's current state
    
    init(name: String) {
        self.tokens = 100
        self.name = name
    }
    
    func canPlace(bet:UInt) -> Bool {
        return tokens > 0  && tokens >= bet
    }
    
    func didWin(bet:UInt) {
    tokens = self.tokens + bet
    }
    
    func didLose(bet:UInt) {
    tokens = self.tokens - bet
    }

}

