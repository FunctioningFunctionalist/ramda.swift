import Foundation
import XCTest
import Ramda

final class PropTests: XCTestCase {

    func testProp() {
        let result = R.prop(\String.count)("hello")
        XCTAssertEqual(result, 5)
    }

}
