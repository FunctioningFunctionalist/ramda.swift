import Foundation
import XCTest
import Ramda

class ApplyTests: XCTestCase {

    func testApply() {
        let add1 = { value in value + 1 }
        let applyAdd = R.apply(add1)
        XCTAssertEqual(applyAdd(5), 6)
    }

    func testApplyWithACollectionOfFunctions() {
        let add1 = { value in value + 1 }
        let add2 = { value in value + 2 }
        let applyAdd = R.apply([add1, add2])
        XCTAssertEqual(applyAdd(5), [6, 7])
    }

}
