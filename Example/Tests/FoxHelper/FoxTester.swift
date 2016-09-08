//
// Created by Justin Guedes on 2016/09/06.
// Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox

class FoxTester {

    static let numberOfTests: UInt = 25

    static func assert(foxParam: IFoxGeneratorParam) -> Bool {
        let runner = FOXRunner()
        let result = runner.resultForNumberOfTests(numberOfTests, property: foxParam.toGenerator())
        XCTAssertTrue(result.succeeded, result.friendlyDescription())
        return result.succeeded
    }

}
