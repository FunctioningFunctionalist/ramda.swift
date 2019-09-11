import Foundation
import XCTest
import Ramda

class ApTests: XCTestCase {

    func testAp() {
        let multiply2: (Int) -> Int = { num in num * 2 }
        let add3: (Int) -> Int = { num in num + 3 }
        let result = R.ap([multiply2, add3], [1, 2, 3])
        XCTAssertEqual(result, [2, 4, 6, 4, 5, 6])
    }

    func testApWithStringType() {
        let appendTasty: (String) -> String = { str in "tasty \(str)" }
        let uppercase: (String) -> String = { str in str.uppercased() }
        let result = R.ap([appendTasty, uppercase], ["pizza", "salad"])
        XCTAssertEqual(result, ["tasty pizza", "tasty salad", "PIZZA", "SALAD"])
    }

}
