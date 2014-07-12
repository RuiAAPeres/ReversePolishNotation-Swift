//
//  Calculator.swift
//  ReversePolishNotation
//
//  Created by Rui Peres on 12/07/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

import Foundation

class calculator {
    let stack : Stack
    
    init(mathematicalExpression : [Character]) {
        stack = Stack.populatedStack(mathematicalExpression)
    }
    
    func evaluateMathematicalExpression () -> Double {
        return 0
    }
}