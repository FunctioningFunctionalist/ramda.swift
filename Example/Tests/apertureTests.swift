import Foundation
import XCTest
import Ramda

class ApertureTests: XCTestCase {

    func testAperture() {
        let result = R.aperture(2, [1, 2, 3, 4, 5])
        XCTAssertEqual(result, [[1, 2], [2, 3], [3, 4], [4, 5]])
    }

    func testAperture2() {
        let result = R.aperture(3, [1, 2, 3, 4, 5])
        XCTAssertEqual(result, [[1, 2, 3], [2, 3, 4], [3, 4, 5]])
    }

    func testAperture3() {
        let result = R.aperture(7, [1, 2, 3, 4, 5])
        XCTAssertEqual(result, [])
    }

}
