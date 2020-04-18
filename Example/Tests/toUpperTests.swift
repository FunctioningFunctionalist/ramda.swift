import Foundation
import XCTest
import Ramda

class ToUpperTests: XCTestCase {

    func testToUpper() {
        let result = R.toUpper("Ramda for Swift")
        XCTAssertEqual(result, "RAMDA FOR SWIFT")
    }

}
