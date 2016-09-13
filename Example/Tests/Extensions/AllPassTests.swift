//
//  AllPassTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2016/09/11.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AllPassTests: XCTestCase {

    struct Card {
        let rank: String
        let suit: String
    }

    func testShouldReturnFalseIfAllPredicatesAreNotSatisfiedByTheArguments() {
        let predicates = [isQueen, isSpade]
        let queenOfClubs = Card(rank: "Q", suit: "♣︎")

        let result = R.allPass(predicates)(with: queenOfClubs)

        XCTAssertFalse(result)
    }

    func testShouldReturnTrueIfAllPredicatesAreSatisfiedByTheArguments() {
        let predicates = [isQueen, isSpade]
        let queenOfSpades = Card(rank: "Q", suit: "♠︎")

        let result = R.allPass(predicates)(with: queenOfSpades)

        XCTAssertTrue(result)
    }

    func isQueen(card: Card) -> Bool {
        return card.rank == "Q"
    }

    func isSpade(card: Card) -> Bool {
        return card.suit == "♠︎"
    }

}
