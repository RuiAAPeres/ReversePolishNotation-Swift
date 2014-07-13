//
//  Calculator.swift
//  ReversePolishNotation
//
//  Created by Rui Peres on 12/07/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

import Foundation


class Calculator {
    
    func evaluateMathematicalExpression (mathematicalExpression : String) -> () {
        
        
        var x = mathematicalExpression.split().reduce([], combine:{(array : [Double], element : String) in
            var returnedArray : [Double] = array
            switch element {
            case "+" :
                returnedArray = [returnedArray[1] + returnedArray[0]]
            default:
                returnedArray+=element.toDouble()!
            }
            return returnedArray
            })
        
        println(x)
    }
}