import Foundation
import XCTest
import Ramda

class AddTests: XCTestCase {

    func testAdd() {
        let lhs = 1
        let rhs = 2
        let result = R.add(lhs)(rhs)
        XCTAssertTrue(result == (lhs + rhs))
    }

}
