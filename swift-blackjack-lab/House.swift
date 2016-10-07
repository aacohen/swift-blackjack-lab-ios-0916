//
//  House.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 10/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class House: Player {
    
    var mustHit: Bool { return !busted && (handscore < 17) && !blackjack || cards.count == 0 }
    
    
    override init(name: String) {
        super.init(name: name)
        self.tokens = 1000
    }
}
