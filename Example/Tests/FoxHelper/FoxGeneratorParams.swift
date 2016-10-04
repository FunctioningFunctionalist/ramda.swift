//
// Created by Justin Guedes on 2016/09/06.
// Copyright (c) 2016 CocoaPods. All rights reserved.
//

import Foundation
import Fox

protocol IFoxGeneratorParam {

    func toGenerator() -> FOXGenerator

}

// swiftlint:disable force_cast
// swiftlint:disable line_length
// swiftlint:disable function_parameter_count

class FoxGeneratorParam<T>: IFoxGeneratorParam {

    private let tupleGenerator: FOXGenerator
    private let validation: T -> Bool

    init(generators: [FOXGenerator], validation: T -> Bool) {
        self.tupleGenerator = FOXTuple(generators)
        self.validation = validation
    }

    func toGenerator() -> FOXGenerator {

        return FOXForAll(self.tupleGenerator) { (generations) -> Bool in

            return self.executeFunc(self.validation, generations: generations as! [AnyObject])

        }

    }

    private func executeFunc(validation: T -> Bool, generations: [AnyObject]) -> Bool {

        return false

    }

}

class FoxGeneratorParam1<A>: FoxGeneratorParam<(A)> {

    init(_ firstGenerator: FOXGenerator, validation: (A) -> Bool) {
        super.init(generators: [firstGenerator], validation: validation)
    }

    override func executeFunc(validation: A -> Bool, generations: [AnyObject]) -> Bool {
        return validation(generations[0] as! A)
    }

}

class FoxGeneratorParam2<A, B>: FoxGeneratorParam<(A, B)> {

    init(_ firstGenerator: FOXGenerator, _ secondGenerator: FOXGenerator, validation: (A, B) -> Bool) {
        super.init(generators: [firstGenerator, secondGenerator], validation: validation)
    }

    override func executeFunc(validation: (A, B) -> Bool, generations: [AnyObject]) -> Bool {
        return validation(generations[0] as! A, generations[1] as! B)
    }

}

class FoxGeneratorParam3<A, B, C>: FoxGeneratorParam<(A, B, C)> {

    init(_ firstGenerator: FOXGenerator, _ secondGenerator: FOXGenerator, _ thirdGenerator: FOXGenerator, validation: (A, B, C) -> Bool) {
        super.init(generators: [firstGenerator, secondGenerator, thirdGenerator], validation: validation)
    }

    override func executeFunc(validation: (A, B, C) -> Bool, generations: [AnyObject]) -> Bool {
        return validation(generations[0] as! A, generations[1] as! B, generations[2] as! C)
    }

}

class FoxGeneratorParam4<A, B, C, D>: FoxGeneratorParam<(A, B, C, D)> {

    init(_ firstGenerator: FOXGenerator, _ secondGenerator: FOXGenerator, _ thirdGenerator: FOXGenerator, _ fourthGenerator: FOXGenerator, validation: (A, B, C, D) -> Bool) {
        super.init(generators: [firstGenerator, secondGenerator, thirdGenerator, fourthGenerator], validation: validation)
    }

    override func executeFunc(validation: (A, B, C, D) -> Bool, generations: [AnyObject]) -> Bool {
        return validation(generations[0] as! A, generations[1] as! B, generations[2] as! C, generations[3] as! D)
    }

}

class FoxGeneratorParam5<A, B, C, D, E>: FoxGeneratorParam<(A, B, C, D, E)> {

    init(_ firstGenerator: FOXGenerator, _ secondGenerator: FOXGenerator, _ thirdGenerator: FOXGenerator, _ fourthGenerator: FOXGenerator, _ fifthGenerator: FOXGenerator, validation: (A, B, C, D, E) -> Bool) {
        super.init(generators: [firstGenerator, secondGenerator, thirdGenerator, fourthGenerator, fifthGenerator], validation: validation)
    }

    override func executeFunc(validation: (A, B, C, D, E) -> Bool, generations: [AnyObject]) -> Bool {
        return validation(generations[0] as! A, generations[1] as! B, generations[2] as! C, generations[3] as! D, generations[4] as! E)
    }

}

// swiftlint:enable function_parameter_count
// swiftlint:enable line_length
// swiftlint:enable force_cast
