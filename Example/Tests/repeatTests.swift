import Foundation
import XCTest
import Ramda

final class RepeatTests: XCTestCase {

    func testRepeat() {
        let result = R.repeat("unchanged")(3)
        XCTAssertEqual(result, ["unchanged", "unchanged", "unchanged"])
    }

}
