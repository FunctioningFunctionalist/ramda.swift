import Foundation
import XCTest
import Ramda

class ApplyToTests: XCTestCase {

    func testApplyTo() {
        let plus1 = { value in value + 1 }
        let applyTo: (@escaping (Int) -> Int) -> Int = R.applyTo(40)
        XCTAssertEqual(applyTo(plus1), 41)
    }

}
