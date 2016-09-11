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

        let result = R.allPass(predicates)

        XCTAssertFalse(result(with: queenOfClubs))
    }

    func testShouldReturnTrueIfAllPredicatesAreSatisfiedByTheArguments() {
        let predicates = [isQueen, isSpade]
        let queenOfSpades = Card(rank: "Q", suit: "♠︎")

        let result = R.allPass(predicates)

        XCTAssertTrue(result(with: queenOfSpades))
    }

    func isQueen(deck: Card) -> Bool {
        return deck.rank == "Q"
    }

    func isSpade(deck: Card) -> Bool {
        return deck.suit == "♠︎"
    }

}
