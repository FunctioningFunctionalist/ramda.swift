import Foundation
import XCTest
import Ramda

class MatchTests: XCTestCase {

    func testMatchEmail() {
        let result = R.match("^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$", "ramda@swift.com")
        XCTAssertEqual(result, ["ramda@swift.com"])
    }

    func testMatch() {
        let result = R.match("/a/", "b")
        XCTAssertEqual(result, [])
    }

    func testMatchCurried() {
        let emailValidator = R.match("^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$")
        XCTAssertEqual(emailValidator("ramda@swift.com"), ["ramda@swift.com"])
    }

}
