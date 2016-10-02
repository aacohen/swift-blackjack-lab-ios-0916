//
//  Card.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Card {
    var suit: String
    var rank: String
    var cardLabel: String
    var cardValue: Int
    var description: String { return cardLabel }
    
    init(suit: String, rank: String) {
        self.suit = suit
        self.rank = rank
        self.cardLabel = "♠️A"
        self.cardValue = determineCardValue(rank: self.rank)
    }
    
    func validSuits() -> [String] {
        return ["♠️","♣️","♥️","♦️"]
    }
    
    func validRanks() -> [String] {
        return ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    }
    
    func determineCardValue(rank:String) -> Int {
        switch rank {
        case "A":
            return 1
        case"2":
            return 2
        case "3":
            return 3
        case "4":
            return 4
        case "5":
            return 5
        case "6":
            return 6
        case "7":
            return 7
        case "8":
            return 8
        case "9":
            return 9
        default:
            return 10
        }
    }
}

func descriptionFor(cardArray: [Card]) -> String {
    // This should take in an array of Card objects and return a single string of all the cardLabels in the array, sorted by suit and rank, with each suit on a new line.
    
    let sortedArray = cardArray.sorted(by: )
    var cardLabelArray = [String]()
    for object in cardArray {
            cardLabelArray.append(object.cardLabel)
    }
    print("array of card labels not yet sorted \(cardLabelArray)")
    let sortedArray =
    for object in sortedArray {
        if let object = self.object {
            sortedString = sortedString + object.cardLabel
        }
    }
    
    
}
