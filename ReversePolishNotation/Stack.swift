//
//  Stack.swift
//  ReversePolishNotation
//
//  Created by Rui Peres on 12/07/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

import Foundation


struct Stack {
    var elements = [Character]()
    
    mutating func push(element : Character) -> () {
        elements+=element
    }
    
    mutating func pop() -> Character {
        return elements.removeLast()
    }
    
    
    static func populatedStack(characters : [Character]) -> Stack {
        var stack : Stack = Stack()
        
        for element in characters {
            stack.push(element)
        }
        
        return stack
    }
}