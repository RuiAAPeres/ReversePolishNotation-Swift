//
//  ReversePolishNotationTests.swift
//  ReversePolishNotationTests
//
//  Created by Rui Peres on 12/07/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

import UIKit
import XCTest

class ReversePolishNotationTests: XCTestCase {
    
    func testSimpleSum() {
        var result = Calculator.evaluateReversePolishNotationExpression("1 2 +")
        XCTAssertEqual(result[0], 3, "Should be 3")
    }
    
    func testThreeNumbersSum() {
        var result = Calculator.evaluateReversePolishNotationExpression("3 1 2 + +")
        XCTAssertEqual(result[0], 6, "Should be 6")
    }
    
    func testWithBigNumbersSum() {
        var result = Calculator.evaluateReversePolishNotationExpression("7 6 5 4 3 2 1 + + + + + +")
        XCTAssertEqual(result[0], 28, "Should be 28")
    }
    
    func testSimpleSubtraction() {
        var result = Calculator.evaluateReversePolishNotationExpression("1 2 -")
        XCTAssertEqual(result[0], -1.0, "Should be -1")
    }
    
    func testThreeNumbersSubtraction() {
        var result = Calculator.evaluateReversePolishNotationExpression("3 1 2 - -")
        XCTAssertEqual(result[0], 0, "Should be 0")
    }
    
    func testWithBigNumbersSubtraction() {
        var result = Calculator.evaluateReversePolishNotationExpression("40 6 5 4 3 2 1 - - - - - -")
        XCTAssertEqual(result[0], 19, "Should be 19")
    }
}
