import Foundation
import XCTest
import Ramda

class AppendTests: XCTestCase {

    func testAppend() {
        XCTAssertEqual(R.append([3], [1, 2]), [1, 2, 3])
    }

    func testAppendAsFunction() {
        let lastDigits = R.append([7, 8, 9])
        let numberSequence = lastDigits([1, 2, 3])

        XCTAssertEqual(numberSequence, [1, 2, 3, 7, 8, 9])
    }

    func testAppendStrings() {
        XCTAssertEqual(R.append("tests", ["write", "more"]), ["write", "more", "tests"])
        XCTAssertEqual(R.append("tests", []), ["tests"])
    }

}
