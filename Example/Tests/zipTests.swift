//
//  ZipTests.swift
//  Ramda_Tests
//
//  Created by adrian koren on 7/17/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import Ramda

class ZipTests: XCTestCase {

    func testZipWithEqualSizes() {
        let result = R.zip([1, 2, 3])(["a", "b", "c"])
        XCTAssertEqual(result[0].0, 1)
        XCTAssertEqual(result[0].1, "a")
        XCTAssertEqual(result[1].0, 2)
        XCTAssertEqual(result[1].1, "b")
        XCTAssertEqual(result[2].0, 3)
        XCTAssertEqual(result[2].1, "c")
    }

    func testZipWithLargerFirst() {
        let result = R.zip([1, 2, 13])(["a", "b"])
        XCTAssertEqual(result[0].0, 1)
        XCTAssertEqual(result[0].1, "a")
        XCTAssertEqual(result[1].0, 2)
        XCTAssertEqual(result[1].1, "b")
    }
    func testZipWithLargerSecond() {
        let result = R.zip([1, 2])(["a", "b", "q"])
        XCTAssertEqual(result[0].0, 1)
        XCTAssertEqual(result[0].1, "a")
        XCTAssertEqual(result[1].0, 2)
        XCTAssertEqual(result[1].1, "b")
    }

}
