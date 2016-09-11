//
//  AlwaysTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/07.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class AlwaysTests: XCTestCase {

    func testShouldCreateSimpleTypeConstantsThatAlwaysReturnsTheCopiedSimpleType() {

        let simpleTypeGenerator = FoxGeneratorParam1(FOXInteger()) {
            (number: Int) in

            let constant = R.always(number)
            let result = constant()
            var result2 = constant()
            result2 += 2

            return result == number && result2 != result
        }

        FoxTester.assert(simpleTypeGenerator)
    }

    func testShouldCreateCompositeTypeConstantsThatAlwaysReturnsTheCopiedCompositeType() {

        let complexTypeGenerator = FoxGeneratorParam1(FOXArray(FOXString())) {
            (strings: [String]) in

            let constant = R.always(strings)
            let result = constant()
            var result2 = constant()
            result2 += ["Another"]

            return result == strings && result2 != result

        }

        FoxTester.assert(complexTypeGenerator)
    }

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
