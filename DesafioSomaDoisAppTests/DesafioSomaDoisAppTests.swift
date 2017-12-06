//
//  DesafioSomaDoisAppTests.swift
//  DesafioSomaDoisAppTests
//
//  Created by Diler Barbosa on 01/12/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import XCTest
@testable import DesafioSomaDoisApp

class DesafioSomaDoisAppTests: XCTestCase {
    
    func testSomaDois() {
        self.measure {
            let numeros = [2,3,6,8,8,14,16,25,32,44,45,57,59,60,62,64,68,70,71,100,260,1505,2000,2200,2450,2607]
            XCTAssertTrue(DesafioSomaDoisController().conseguimosAcharONumero(31, somandoDoisNumerosDaLista: numeros))
            XCTAssertFalse(DesafioSomaDoisController().conseguimosAcharONumero(4, somandoDoisNumerosDaLista: numeros))
        }
    }
    
    var passed:Bool = false
    func testPerformance() {

        let expectation2 = expectation(description: "Sun of elemtns succeed")
        let startTime = CFAbsoluteTimeGetCurrent()
        var numeros: [Int] = []
        for i in 0..<5000 {
            numeros.append(i*3)
        }
        let sum = SumObject()
        let numberDispatchs = 3
        sum.findSumInicial(numberOfDispatchs:numberDispatchs,numbers: numeros, value: 29991) { (string) in
            if !self.passed {
                self.passed = true
                let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
                print("TEMPOO:\(timeElapsed)")
                expectation2.fulfill()
            }
        }
        waitForExpectations(timeout: 10000, handler: nil)
    }
    
}
