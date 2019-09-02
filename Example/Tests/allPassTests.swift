import Foundation
import XCTest
import Ramda

class AllPassTests: XCTestCase {

    struct Card {
        let rank: String
        let suit: String
    }

    func testAllPassReturnsTrue() {
        let isQueen: (Card) -> Bool = R.propEq(("rank", "Q"))
        let isSpade: (Card) -> Bool = R.propEq(("suit", "♠︎"))
        let isQueenOfSpades = R.allPass([isQueen, isSpade])
        XCTAssertTrue(isQueenOfSpades(Card(rank: "Q", suit: "♠︎")))
    }

    func testAllPassReturnsFalse() {
        let isQueen: (Card) -> Bool = R.propEq(("rank", "Q"))
        let isSpade: (Card) -> Bool = R.propEq(("suit", "♠︎"))
        let isQueenOfSpades = R.allPass([isQueen, isSpade])
        XCTAssertFalse(isQueenOfSpades(Card(rank: "K", suit: "♠︎")))
    }

}
