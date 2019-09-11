import Foundation
import XCTest
import Ramda

class PrependTests: XCTestCase {

    func testPrepend() {
        XCTAssertEqual(R.prepend([3], [1, 2]), [3, 1, 2])
    }

}
