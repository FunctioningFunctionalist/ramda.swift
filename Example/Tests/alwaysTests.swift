import Foundation
import XCTest
import Ramda

final class AlwaysTests: XCTestCase {

    func testAlways() {
        let resultFunc = R.always("unchanged")
        XCTAssertEqual(resultFunc(), "unchanged")
    }

}
