import Foundation
import XCTest
import Ramda

class SortTests: XCTestCase {

    struct Person: Comparable {
        let age: Int
        let name: String

        static func < (lhs: SortTests.Person, rhs: SortTests.Person) -> Bool {
            return lhs.age > rhs.age
        }
    }

    func testSortDescending() {
        let list = [Person(age: 23, name: "Tim"), Person(age: 45, name: "John")]
        let expectedList = [Person(age: 45, name: "John"), Person(age: 23, name: "Tim")]
        let sorted: (Person, Person) -> Bool = { person1, person2 in person1 < person2 }
        let sort = R.sort(sorted)
        XCTAssertEqual(sort(list), expectedList)
    }

    func testSortAscending() {
        let list = [Person(age: 23, name: "Tim"), Person(age: 45, name: "John")]
        let expectedList = [Person(age: 23, name: "Tim"), Person(age: 45, name: "John")]
        let sorted: (Person, Person) -> Bool = { person1, person2 in person1 > person2 }
        let sort = R.sort(sorted)
        XCTAssertEqual(sort(list), expectedList)
    }

}
