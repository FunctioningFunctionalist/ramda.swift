//
//  addTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/06.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class addTests: XCTestCase {

    func testShouldAddIntegersTogether() {

        let integerGenerator = FoxGeneratorParam2(FOXInteger(), FOXInteger()) { (x: Int, y: Int) in

            let result = R.add(x, y: y)
            return result == (x + y)

        }

        FoxTester.assert(integerGenerator)

    }

    func testShouldAddIntegersTogetherWithPartialFunctions() {

        let partialGenerator = FoxGeneratorParam1(FOXInteger()) { (x: Int) in

            let partial = R.add(x)

            let integerGenerator = FoxGeneratorParam1(FOXInteger()) { (y: Int) in

                let result = partial(y: y)

                return result == (x + y)

            }

            return FoxTester.assert(integerGenerator)

        }

        FoxTester.assert(partialGenerator)

    }

    func testShouldAddFloatsTogether() {

        let floatGenerator = FoxGeneratorParam2(FOXFloat(), FOXFloat()) { (x: Float, y: Float) in

            let result = R.add(x, y: y)
            return result == (x + y)

        }

        FoxTester.assert(floatGenerator)

    }

    func testShouldAddFloatsTogetherWithPartialFunctions() {

        let partialGenerator = FoxGeneratorParam1(FOXFloat()) { (x: Float) in

            let partial = R.add(x)

            let floatGenerator = FoxGeneratorParam1(FOXFloat()) { (y: Float) in

                let result = partial(y: y)

                return result == (x + y)

            }

            return FoxTester.assert(floatGenerator)

        }

        FoxTester.assert(partialGenerator)

    }

    func testShouldAddDoublesTogether() {

        let doubleGenerator = FoxGeneratorParam2(FOXDouble(), FOXDouble()) { (x: Double, y: Double) in

            let result = R.add(x, y: y)
            return result == (x + y)

        }

        FoxTester.assert(doubleGenerator)

    }

    func testShouldAddDoublesTogetherWithPartialFunctions() {

        let partialGenerator = FoxGeneratorParam1(FOXDouble()) { (x: Double) in

            let partial = R.add(x)

            let doubleGenerator = FoxGeneratorParam1(FOXDouble()) { (y: Double) in

                let result = partial(y: y)

                return result == (x + y)

            }

            return FoxTester.assert(doubleGenerator)

        }

        FoxTester.assert(partialGenerator)

    }

    func testShouldAddStringsTogether() {

        let stringGenerator = FoxGeneratorParam2(FOXString(), FOXString()) { (x: String, y: String) in

            let result = R.add(x, y: y)
            return result == (x + y)

        }

        FoxTester.assert(stringGenerator)

    }

    func testShouldAddStringsTogetherWithPartialFunctions() {

        let partialGenerator = FoxGeneratorParam1(FOXString()) { (x: String) in

            let partial = R.add(x)

            let stringGenerator = FoxGeneratorParam1(FOXString()) { (y: String) in

                let result = partial(y: y)

                return result == (x + y)

            }

            return FoxTester.assert(stringGenerator)

        }

        FoxTester.assert(partialGenerator)

    }

}
