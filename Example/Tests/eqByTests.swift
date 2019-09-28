import Foundation
import XCTest
import Ramda

class EqByTests: XCTestCase {

    func testEqBy() {
        let result = R.eqBy(mockAbs, 5, -5)
        XCTAssertEqual(result, true)
    }

}

extension EqByTests {

    private func mockAbs<A: Comparable & SignedNumeric>(_ value1: A, _ value2: A) -> Bool {
                    return abs(value1) == abs(value2)

    }

}
