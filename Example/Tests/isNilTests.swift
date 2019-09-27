import Foundation
import XCTest
import Ramda

class IsNilTests: XCTestCase {

    func testIsNil() {
        let result = R.isNil(nil)
        XCTAssertEqual(result, true)
    }

    func testIsNilTrue() {

        var name: String?
        let result = R.isNil(name)

        XCTAssertEqual(result, true)

    }

    func testIsNilFalse() {

        let name: String = "Ramda"
        let result = R.isNil(name)

        XCTAssertEqual(result, false)
    }

}
