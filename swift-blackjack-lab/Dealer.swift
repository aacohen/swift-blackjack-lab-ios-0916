//
//  Dealer.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 10/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Dealer {

var deck: Deck
var house: [House] = []
var player: [House] =
var bet: UInt = 0

//Write a method called place(bet:) which takes an unsigned integer argument and returns a boolean of whether or not the house and the player can both afford the submitted bet. If they can, this method should record the value of the bet being placed.
func place(bet: UInt) -> Bool {
    if (house.tokens >= bet) && (player.tokens >= bet) {
        return true
    }
    else {
        let bet = 0
        return false
    }
}
 // Write a method called deal() that deals a new round, giving two new cards each to the player and to the house.
    func deal() {
       var card = deck.drawCard()
        house.append
        
    }
    
    
}
