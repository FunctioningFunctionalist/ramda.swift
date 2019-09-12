import Foundation
import XCTest
import Ramda

class AppendTests: XCTestCase {

    func testAppend() {
        XCTAssertEqual(R.append([3], [1, 2]), [1, 2, 3])
    }

}
