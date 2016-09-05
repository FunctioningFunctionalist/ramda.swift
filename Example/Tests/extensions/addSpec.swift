//
//  addSpec.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/05.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import Ramda

class addSpec: QuickSpec {

    override func spec() {

        describe("the add function") {

            context("for integers") {

                context("when an integer is passed to the function") {

                    it("creates a partial function") {

                        let addition = R.add(3)

                        expect(addition(y: 5)).to(equal(3 + 5))
                        expect(addition(y: 25)).to(equal(3 + 25))
                        expect(addition(y: 73)).to(equal(3 + 73))

                    }

                }

                context("when integers are passed to the function") {

                    it("is calculated and returned immediately") {

                        expect(R.add(2, y: 5)).to(equal(2 + 5))
                        expect(R.add(7, y: 8)).to(equal(7 + 8))
                        expect(R.add(7531, y: 84534)).to(equal(7531 + 84534))

                    }

                }

            }

            context("for floats") {

                context("when a float is passed to the function") {

                    it("creates a partial function") {

                        let addition = R.add(Float(3.5))

                        expect(addition(y: Float(6.5))).to(equal(3.5 + 6.5))
                        expect(addition(y: Float(235.43))).to(equal(3.5 + 235.43))
                        expect(addition(y: Float(14515.68))).to(equal(3.5 + 14515.68))

                    }

                }

                context("when floats are passed to the function") {

                    it("is calculated and returned immediately") {

                        expect(R.add(Float(32.63), y: Float(23.5))).to(equal(32.63 + 23.5))
                        expect(R.add(Float(315.35), y: Float(515.545))).to(equal(315.35 + 515.545))
                        expect(R.add(Float(35161.3256), y: Float(4647.2))).to(equal(35161.3256 + 4647.2))

                    }

                }

            }

            context("for doubles") {

                context("when a double is passed to the function") {

                    it("creates a partial function") {

                        let addition = R.add(Double(62.3))

                        expect(addition(y: Double(53.2))).to(equal(62.3 + 53.2))
                        expect(addition(y: Double(567.325))).to(equal(62.3 + 567.325))
                        expect(addition(y: Double(98165.425))).to(equal(62.3 + 98165.425))

                    }

                }

                context("when doubles are passed to the function") {

                    it("is calculated and returned immediately") {

                        expect(R.add(Double(15.2), y: Double(412.51))).to(equal(15.2 + 412.51))
                        expect(R.add(Double(41.51), y: Double(51672.431))).to(equal(41.51 + 51672.431))
                        expect(R.add(Double(631.6121), y: Double(351361.24))).to(equal(631.6121 + 351361.24))

                    }

                }

            }

        }

    }

}
