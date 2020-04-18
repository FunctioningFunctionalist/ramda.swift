import Foundation
import XCTest
import Ramda

class ToLowerTests: XCTestCase {

    func testToLower() {
        let result = R.toLower("Ramda for Swift")
        XCTAssertEqual(result, "ramda for swift")
    }

}
