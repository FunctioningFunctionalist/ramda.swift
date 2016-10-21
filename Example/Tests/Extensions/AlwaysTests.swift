//
//  AlwaysTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/07.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Ramda

class AlwaysTests: XCTestCase {

    func testShouldCreateObjectReferenceTypeThatAlwaysReturnsTheReferenceToTheObject() {

        let initialString = "This is the ref string"
        let changeString = "This is the changed string"
        let constant = R.always(ObjectRef(refString: initialString))

        constant().refString = changeString
        let result = constant()

        XCTAssertEqual(changeString, result.refString)
    }

    class ObjectRef {

        var refString: String

        init(refString: String) {
            self.refString = refString
        }
    }
}
