import Foundation
import XCTest
import Ramda

class FlipTests: XCTestCase {

    func testFlip() {
        let expectedResult = "Hello World"
        let stringWithEncoding = R.flip(String.init(data:encoding:))
        let uft8String = stringWithEncoding(.utf8)
        XCTAssertEqual(uft8String(expectedResult.data(using: .utf8)!), expectedResult)
    }

    func testFlipWithCurriedFunction() {
        let uppercasedWithLocale = R.flip(String.uppercased(with:))
        let uppercasedWithEn = uppercasedWithLocale(Locale.init(identifier: "en"))
        XCTAssertEqual(uppercasedWithEn("hello"), "HELLO")
    }

}
