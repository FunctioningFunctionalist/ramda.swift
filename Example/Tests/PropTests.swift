import Foundation
import XCTest
import Ramda

final class PropTests: XCTest {

    func testProp() {
        let result = R.prop(\String.count)("hello")
        XCTAssertEqual(result, 5)
    }

}
