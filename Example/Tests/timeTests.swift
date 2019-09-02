import Foundation
import XCTest
import Ramda

final class TimeTests: XCTest {

    func testTimes() {
        let result = R.times(R.add(10))(3)
        XCTAssertEqual(result, [10, 11, 12])
    }

}
