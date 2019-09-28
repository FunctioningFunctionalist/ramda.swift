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

    func testStructHasTrue() {

        let apartment = Apartment(number: 1)
        let hasNumber = R.has(propObjStruct: "number")
        let result = hasNumber(apartment)
        XCTAssertEqual(result, true)
    }

    func testStructHasFalse() {

        let apartment = Apartment(number: 1)
        let hasAddress = R.has(propObjStruct: "address")
        let result = hasAddress(apartment)
        XCTAssertEqual(result, false)
    }

}

extension HasTests {

    private class Person {
        var name: String

        init(name: String) {
            self.name = name
        }
    }

    private struct Apartment {
        var number: Int
    }

}
