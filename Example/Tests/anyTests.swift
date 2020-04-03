import Foundation
import XCTest
import Ramda

final class AnyTests: XCTestCase {

    func testAnyReturnsTrueIfElementPassesThePredicateTest() {
        let lessThen0: (Int) -> Bool = { value in value < 0 }
        let values = [1, 2, -2, 1, 2]
        XCTAssertTrue(R.any(lessThen0, values))
    }

    func testAnyReturnsFalseIfNoElementPassesThePredicateTest() {
        let lessThen0: (Int) -> Bool = { value in value < 0 }
        let values = [1, 2, 1, 2]
        XCTAssertFalse(R.any(lessThen0, values))
    }

}
