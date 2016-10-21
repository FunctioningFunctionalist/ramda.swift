////
////  AddTests.swift
////  Ramda
////
////  Created by Justin Guedes on 2016/09/06.
////  Copyright (c) 2016 CocoaPods. All rights reserved.
////
//
//import XCTest
//import Fox
//import Ramda
//
//class AddTests: XCTestCase {
//
//    func testShouldAddIntegersTogether() {
//
//        let integerGenerator = FoxGeneratorParam2(FOXInteger(), FOXInteger()) {
//            (lhs: Int, rhs: Int) in
//
//            let result = R.add(lhs)(to: rhs)
//            return result == (lhs + rhs)
//
//        }
//
//        FoxTester.assert(integerGenerator)
//    }
//
//    func testShouldAddIntegersTogetherWithPartialFunctions() {
//
//        let partialGenerator = FoxGeneratorParam1(FOXInteger()) {
//            (lhs: Int) in
//
//            let partial = R.add(lhs)
//
//            let integerGenerator = FoxGeneratorParam1(FOXInteger()) {
//                (rhs: Int) in
//
//                let result = partial(to: rhs)
//                return result == (lhs + rhs)
//
//            }
//
//            return FoxTester.assert(integerGenerator)
//        }
//
//        FoxTester.assert(partialGenerator)
//    }
//
//    func testShouldAddFloatsTogether() {
//
//        let floatGenerator = FoxGeneratorParam2(FOXFloat(), FOXFloat()) {
//            (lhs: Float, rhs: Float) in
//
//            let result = R.add(lhs)(to: rhs)
//            return result == (lhs + rhs)
//
//        }
//
//        FoxTester.assert(floatGenerator)
//    }
//
//    func testShouldAddFloatsTogetherWithPartialFunctions() {
//
//        let partialGenerator = FoxGeneratorParam1(FOXFloat()) {
//            (lhs: Float) in
//
//            let partial = R.add(lhs)
//
//            let floatGenerator = FoxGeneratorParam1(FOXFloat()) {
//                (rhs: Float) in
//
//                let result = partial(to: rhs)
//                return result == (lhs + rhs)
//
//            }
//
//            return FoxTester.assert(floatGenerator)
//        }
//
//        FoxTester.assert(partialGenerator)
//    }
//
//    func testShouldAddDoublesTogether() {
//
//        let doubleGenerator = FoxGeneratorParam2(FOXDouble(), FOXDouble()) {
//            (lhs: Double, rhs: Double) in
//
//            let result = R.add(lhs)(to: rhs)
//            return result == (lhs + rhs)
//        }
//
//        FoxTester.assert(doubleGenerator)
//    }
//
//    func testShouldAddDoublesTogetherWithPartialFunctions() {
//
//        let partialGenerator = FoxGeneratorParam1(FOXDouble()) {
//            (lhs: Double) in
//
//            let partial = R.add(lhs)
//
//            let doubleGenerator = FoxGeneratorParam1(FOXDouble()) {
//                (rhs: Double) in
//
//                let result = partial(to: rhs)
//                return result == (lhs + rhs)
//            }
//
//            return FoxTester.assert(doubleGenerator)
//        }
//
//        FoxTester.assert(partialGenerator)
//    }
//
//}
