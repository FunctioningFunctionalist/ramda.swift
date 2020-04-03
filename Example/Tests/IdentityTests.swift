import Foundation
import XCTest
import Ramda

final class IdentityTests: XCTestCase {

    func testIdentity() {
        let result = R.identity("unchanged")
        XCTAssertEqual(result, "unchanged")
    }

}
