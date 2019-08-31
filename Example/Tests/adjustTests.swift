import Foundation
import XCTest
import Ramda

class AdjustTests: XCTestCase {

    func testAdjust() {
        let add1 = R.add(1)
        let result = R.adjust(add1, 2, [1, 2, 3])
        let expectedResult = [1, 2, 4]
        XCTAssertEqual(result, expectedResult)
    }

    func testAdjustWithInvalidIndex() {
        let add1 = R.add(1)
        let result = R.adjust(add1, 3, [1, 2, 3])
        let expectedResult = [1, 2, 3]
        XCTAssertEqual(result, expectedResult)
    }

}
