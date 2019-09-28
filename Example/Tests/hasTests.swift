import Foundation
import XCTest
import Ramda

class HasTests: XCTestCase {

    func testHasTrue() {

        let person = ["name": "alice"]
        let hasName = R.has("name")
        let result = hasName(person)
        XCTAssertEqual(result, true)
    }

    func testHasFalse() {

        let person = ["name": "alice"]
        let hasSurname = R.has("surname")
        let result = hasSurname(person)
        XCTAssertEqual(result, false)
    }

    func testHasEmpty() {

        let person: [String: Any] = [:]
        let hasSurname = R.has("name")
        let result = hasSurname(person)
        XCTAssertEqual(result, false)
    }

    func testObjectHasTrue() {

        let person = Person(name: "alice")
        let hasName = R.has(propObj: "name")
        let result = hasName(person)
        XCTAssertEqual(result, true)
    }

    func testObjectHasFalse() {

        let person = Person(name: "alice")
        let hasSurname = R.has(propObj: "surname")
        let result = hasSurname(person)
        XCTAssertEqual(result, false)
    }

    private class Person {
        var name: String

        init(name: String) {
            self.name = name
        }
    }

}
