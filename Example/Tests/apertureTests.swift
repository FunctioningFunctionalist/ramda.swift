import Foundation
import XCTest
import Ramda

class ApertureTests: XCTestCase {

    func testAperture() {
        XCTAssertEqual(R.aperture(2, [1, 2, 3, 4]), [[1, 2], [3, 4]])
    }

    func testApertureWithSingleSplit() {
        XCTAssertEqual(R.aperture(1, [1, 2, 3, 4]), [[1], [2], [3], [4]])
    }

    func testApertureWithSingleEqualToZero() {
        XCTAssertEqual(R.aperture(0, [1, 2, 3, 4]), [[1, 2, 3, 4]])
    }

    func testApertureWithOddNumber() {
        XCTAssertEqual(R.aperture(3, [1, 2, 3, 4]), [[1, 2, 3], [4]])
    }

    func testApertureWithSplitEqualToArrayCount() {
        XCTAssertEqual(R.aperture(4, [1, 2, 3, 4]), [[1, 2, 3, 4]])
    }

    func testApertureWithSplitGreaterThanArrayCount() {
        XCTAssertEqual(R.aperture(5, [1, 2, 3, 4]), [[1, 2, 3, 4]])
    }

}
