//
//  ReduceByTests.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 10/13/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class ReduceByTests: XCTestCase {

    struct Student {
        let name: String
        let score: Int
    }

    let students = [
        Student(name: "Tyrone", score: 90),
        Student(name: "Justin", score: 50),
        Student(name: "Ivan", score: 75)
    ]

    func testGroupsStudentsCorrectly() {
        typealias Signature = (@escaping (Student) -> String) -> ([Student]) -> [String: [String]]

        let reduceToNamesBy: Signature = R.reduceBy { arr, student in
            var append = arr
            append.append(student.name)
            return append
        }([String]())

        let namesByPassRate = reduceToNamesBy { student in
            student.score > 60 ? "Pass" : "Fail"
        }

        let result = namesByPassRate(students)

        XCTAssertEqual(R.first(result)?.1.count, 2)
        XCTAssertEqual(R.last(result)?.1.count, 1)
    }

}
