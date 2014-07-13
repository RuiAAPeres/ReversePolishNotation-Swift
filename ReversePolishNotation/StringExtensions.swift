//
//  StringExtensions.swift
//  ReversePolishNotation
//
//  Created by Rui Peres on 12/07/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

import Foundation

extension String {
    
    func split(delimiter: Character = " ") -> [String] {
        return Swift.split(self) { (char: Character) -> Bool in
            char == delimiter
        }
    }
    
    func toDouble() -> Double? {
        return self.bridgeToObjectiveC().doubleValue
    }
    
}