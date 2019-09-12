import Foundation
import XCTest
import Ramda

class AnyPassTests: XCTestCase {

    struct Card {
        let rank: String
        let suit: String
    }

    func testAnyPassReturnsTrue() {
        let isQueen: (Card) -> Bool = R.propEq(("rank", "K"))
        let isSpade: (Card) -> Bool = R.propEq(("suit", "♠︎"))
        let isQueenOfSpades = R.anyPass([isQueen, isSpade])
        XCTAssertTrue(isQueenOfSpades(Card(rank: "Q", suit: "♠︎")))
    }

    func testAllPassReturnsFalse() {
        let isQueen: (Card) -> Bool = R.propEq(("rank", "K"))
        let isSpade: (Card) -> Bool = R.propEq(("suit", "♣"))
        let isQueenOfSpades = R.anyPass([isQueen, isSpade])
        XCTAssertTrue(isQueenOfSpades(Card(rank: "Q", suit: "♠︎")))
    }

}
