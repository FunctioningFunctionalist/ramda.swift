import Foundation
import XCTest
import Ramda

class ReduceTests: XCTestCase {

    func testReduce() {
        let subtract3: (Int, Int) -> Int = { num1, num2 in num1 - num2 }
        let result = R.reduce(subtract3, 0, [1, 2, 3, 4])
        XCTAssertEqual(result, -10)
    }

}
