import Foundation
import XCTest
import Ramda

final class AlwaysTests: XCTest {

    func testAlways() {
        let resultFunc = R.always("unchanged")
        XCTAssertEqual(resultFunc(), "unchanged")
    }

}
