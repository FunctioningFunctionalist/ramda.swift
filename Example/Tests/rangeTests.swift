import Foundation
import XCTest
import Ramda

final class RangeTests: XCTestCase {

    func testRange() {
        let lhs = 1
        let rhs = 5
        let result = R.range(lhs)(rhs)
        XCTAssertEqual(result, [1, 2, 3, 4])
    }

}
