import Foundation
import XCTest
import Ramda

final class IdentityTests: XCTest {

    func testIdentity() {
        let result = R.identity("unchanged")
        XCTAssertEqual(result, "unchanged")
    }

}
