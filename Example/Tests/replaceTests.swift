import Foundation
import XCTest
import Ramda

class ReplaceTests: XCTestCase {

    func testReplace() {

        let result = R.replace("foo", "bar", "foo foo foo")
        XCTAssertEqual(result, "bar foo foo")

    }

    func testReplaceWithRegex() {

        let regexExpression = "^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$"
        let replacement = "ramda@swift.com"
        let text = "test@test.com"

        let result = R.replace(regexExpression, replacement, text)

        XCTAssertEqual(result, "ramda@swift.com")

        let val = R.replace(regexExpression)
        let function = val(replacement)
        let newText = function(text)

        XCTAssertEqual(newText, "ramda@swift.com")

    }

    func testReplaceInvalid() {

        let result = R.replace("invalid", "bar", "foo foo foo")
        XCTAssertEqual(result, "foo foo foo")

    }

}
