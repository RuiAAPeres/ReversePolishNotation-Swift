//
//  Calculator.swift
//  ReversePolishNotation
//
//  Created by Rui Peres on 12/07/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

import Foundation


class Calculator {
    
    class func evaluateReversePolishNotationExpression (mathematicalExpression : String) -> [Double] {
        return mathematicalExpression.split().reduce([], combine:Calculator.reversePolishNotationAlgorithm())
    }
    
    class func reversePolishNotationAlgorithm() -> ([Double], String) -> [Double]{
        return {(array : [Double], element : String) in
            
            var returnedArray : [Double] = array
            switch element {
            case "+" :
                returnedArray = [returnedArray[0] + returnedArray[1]] + returnedArray[2...returnedArray.count-1]
            case "-" :
                returnedArray = [returnedArray[0] - returnedArray[1]] + returnedArray[2...returnedArray.count-1]
            default:
                returnedArray+=element.toDouble()!
            }
            
            return returnedArray
        }
    }
}