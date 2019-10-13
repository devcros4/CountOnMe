//
//  CalculatorTestCase.swift
//  CountOnMeTests
//
//  Created by DELCROS Jean-baptiste on 13/10/2019.
//  Copyright © 2019 Vincent Saluzzo. All rights reserved.
//

import XCTest
@testable import CountOnMe

class CalculatorTestCase: XCTestCase {

    var calculator: Calculator!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        calculator = Calculator()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testGivenStringNumbersHasEmptyString_whenExpressionIsCorrectTriggered_thenSendsFalse(){
        calculator.elements = ["+"]
        XCTAssertFalse(calculator.expressionIsCorrect)
    }
    
    func testGivenStringNumbersHasOneMember_whenExpressionISCorrectTriggered_thenSendsTrue(){
        calculator.elements = ["1"]
        XCTAssert(calculator.expressionIsCorrect)
    }
    
    func testGivenStringNumbersHasEmptyString_whenExpressionHaveEnoughElementTriggered_thenSendsFalse(){
        calculator.elements = [""]
        XCTAssertFalse(calculator.expressionHaveEnoughElement)
    }
    
    func testGivenStringNumbersHasOneMember_whenExpressionHaveEnoughElementTriggered_thenSendsTrue(){
        calculator.elements = ["1","+","2"]
        XCTAssert(calculator.expressionHaveEnoughElement)
    }
    
    func testGivenStringNumbersContainsOneChar_whenAddNumberTriggered_thenSendsTrue() {
        calculator.elements = ["1"]
        XCTAssert(calculator.canAddOperator)
    }
    
    func testGivenStringNumbersIsEmpty_whenAddNumberTriggered_thenSendsFalse() {
        calculator.elements = []
        XCTAssertFalse(calculator.canAddOperator)
    }
    
    func testMore() {
        calculator.elements = ["2","+","2"]
        XCTAssert(Int(calculator.calcul()) == 4)
    }
    func testLess() {
        calculator.elements = ["2","-","2"]
        XCTAssert(Int(calculator.calcul()) == 0)
    }
    func testMultiply() {
        calculator.elements = ["2","*","3"]
        XCTAssert(Int(calculator.calcul()) == 6)
    }
    func testDivide() {
        calculator.elements = ["2","/","2"]
        XCTAssert(Int(calculator.calcul()) == 1)
    }

    func test() {
        calculator.elements = ["2"]
        XCTAssert(Int(calculator.calcul()) == 2)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
