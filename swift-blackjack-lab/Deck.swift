//
//  Deck.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Deck {
    
    fileprivate(set) var undealtArray: [Card] = []
    fileprivate(set) var dealtArray: [Card] = []
    var description: String = ""
    //Add a description string property that can be used to print information regarding the cards to the console. This string will need to contain information about the remaining cards and dealt cards.
    //Top-tip: Use the global descriptionFor(cardArray:) method from Card.swift to add detail to this description.
    
    init(){
        //  Write an initializer that generates the 52 unique cards required for modeling a standard 52-card deck. It should hold them in the array of cards that can be dealt.
        let suits = Card.validSuits()
        let rank = Card.validRanks()
        for suit in suits {
            for r in rank {
                undealtArray.append(Card(suit: suit, rank: r))
            }
            
            
        }
        dealtArray = []
        print("undealtArray after loop \(undealtArray)")
    }
    
    func drawCard() -> Card {
        
       let count = undealtArray.count
        if count > 0 {
        let nextCard = undealtArray[count - 1]
        undealtArray.remove(at: count - 1)
        dealtArray.append(nextCard)
        return nextCard
        }
        return Card(suit: "", rank: "")
    }
    
    func shuffle() {
        //gathers up the dealt cards and randomizes all 52 cards. These randomized cards should be returned to your array of undealt cards.
        //Hint: The arc4random_uniform() C function is accessible in Swift.
        
        var newArray = [Card]()
        for _ in dealtArray {
           let randomNumber = Int(arc4random_uniform(52) + 0)
            newArray.append(dealtArray[randomNumber])
            dealtArray.remove(at: randomNumber)
        }
        undealtArray = newArray
            
        }
    
}
