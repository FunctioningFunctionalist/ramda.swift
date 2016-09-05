//
//  adjust.swift
//  Ramda
//
//  Created by TYRONE AVNIT on 2016/09/05.
//  Copyright © 2016 NPO. All rights reserved.
//

import Foundation

extension R {
    
    /**
     
     Applies a function to the value at the given index of an array, returning a new copy of the array with the
     element at the given index replaced with the result of the function application.
     
     - parameter function: The function to apply.
     - parameter index: The index of the object.
     - parameter array: An array whose value at the supplied index will be replaced.
     
     - returns: A copy of the supplied array-like object with the element at index replaced with the value returned by applying function to the existing element.
     
     */
    
    public class func adjust<A>(function: (A) -> A) -> (index: Int) -> (array: [A]) -> [A] {
        return { index in
            return { array in
                var result: [A] = array
                if(index >= array.count && index > -1) {
                    result[index] = function(result[index])
                }
                return result
            }
        }
    }
    
    /**
     
     Applies a function to the value at the given index of an array, returning a new copy of the array with the
     element at the given index replaced with the result of the function application.
     
     - parameter function: The function to apply.
     - parameter index: The index of the object.
     - parameter array: An array whose value at the supplied index will be replaced.
     
     - returns: A copy of the supplied array-like object with the element at index replaced with the value returned by applying function to the existing element.
     
     */
    
    public class func adjust<A>(function: (A) -> A, index: Int) -> (array: [A]) -> [A] {
        return adjust(function)(index: index)
    }
    
    /**
     
     Applies a function to the value at the given index of an array, returning a new copy of the array with the
     element at the given index replaced with the result of the function application.
     
     - parameter function: The function to apply.
     - parameter index: The index of the object.
     - parameter array: An array whose value at the supplied index will be replaced.
     
     - returns: A copy of the supplied array-like object with the element at index replaced with the value returned by applying function to the existing element.
     
     */
    
    public class func adjust<A>(function: (A) -> A, index: Int, array: [A]) -> [A] {
        return adjust(function)(index: index)(array: array)
    }

}


