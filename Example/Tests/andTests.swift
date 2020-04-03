import Foundation
import XCTest
import Ramda

final class AndTests: XCTestCase {

    func testAndReturnsTrueIfBothArgumentsAreTrue() {
        let result = R.and(true, true)
        XCTAssertTrue(result)
    }

    func testAndReturnsFalseIfFirstArgumentIsFalseAndSecondArgumentIsTrue() {
        let result = R.and(false, true)
        XCTAssertFalse(result)
    }

    func testAndReturnsFalseIfFirstArgumentIsTrueAndSecondArgumentIsFalse() {
        let result = R.and(true, false)
        XCTAssertFalse(result)
    }

}
