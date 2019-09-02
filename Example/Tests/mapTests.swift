import Foundation
import XCTest
import Ramda

class MapTests: XCTestCase {

    func testMap() {
        let add1 = R.map(R.add(1))
        let result = add1([1, 2, 3])
        let expectedResult = [2, 3, 4]
        XCTAssertEqual(result, expectedResult)
    }

}
