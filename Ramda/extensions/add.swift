//
//  add.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/05.
//
//

import Foundation

extension R {
    
    /**

     Adds two integer values.
     
     - returns: A partial function that accepts another integer to produce the addition result.

    */
 
    public class func add(x: Int) -> (y: Int) -> Int {
        return { y in
            return x + y
        }
    }
    
    /**
     
     Adds two unsigned integer values.
     
     - returns: A partial function that accepts another unsigned integer to produce the addition result.
     
     */
    
    public class func add(x: UInt) -> (y: UInt) -> UInt {
        return { y in
            return x + y
        }
    }
    
    /**
     
     Adds two float values.
     
     - returns: A partial function that accepts another float to produce the addition result.
     
     */
    
    public class func add(x: Float) -> (y: Float) -> Float {
        return { y in
            return x + y
        }
    }
    
    /**
     
     Adds two double values.
     
     - returns: A partial function that accepts another double to produce the addition result.
     
     */
    
    public class func add(x: Double) -> (y: Double) -> Double {
        return { y in
            return x + y
        }
    }
    
    /**
     
     Adds two integer values.
     
     - returns: The result of the two integers.
     
     */
    
    public class func add(x: Int, y: Int) -> Int {
        return add(x)(y: y)
    }
    
    /**
     
     Adds two unsigned integer values.
     
     - returns: The result of the two unsigned integers.
     
     */
    
    public class func add(x: UInt, y: UInt) -> UInt {
        return add(x)(y: y)
    }
    
    /**
     
     Adds two float values.
     
     - returns: The result of the two floats.
     
     */
    
    public class func add(x: Float, y: Float) -> Float {
        return add(x)(y: y)
    }
    
    /**
     
     Adds two double values.
     
     - returns: The result of the two doubles.
     
     */
    
    public class func add(x: Double, y: Double) -> Double {
        return add(x)(y: y)
    }
    
}