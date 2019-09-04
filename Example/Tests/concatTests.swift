import Foundation
import XCTest
import Ramda

final class ConcatTests: XCTest {

    func testConcatTwoStrings() {
        let result = R.concat("ABC", "DEF")
        XCTAssertEqual(result, "ABCDEF")
    }

    func testConcatTwoArrays() {
        let result = R.concat([1, 2, 3], [4, 5, 6])
        XCTAssertEqual(result, [1, 2, 3, 4, 5, 6])
    }

}
