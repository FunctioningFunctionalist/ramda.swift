import Foundation
import XCTest
import Ramda

class BothTests: XCTestCase {

    func testBoth() {
        let bothGreater = R.both(R.gt(20), R.gt(30))

        XCTAssertEqual(bothGreater(10), false)
        XCTAssertEqual(bothGreater(90), true)
    }

    func testBothExample() {

        let gt10 = R.gt(10)
        let lt20 = R.lt(20)
        let greaterThan10AndLessThan20 = R.both(gt10, lt20)

        XCTAssertEqual(greaterThan10AndLessThan20(15), true)
        XCTAssertEqual(greaterThan10AndLessThan20(30), false)

    }

}
