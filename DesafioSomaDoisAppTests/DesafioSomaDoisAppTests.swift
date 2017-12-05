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

        let numeros = [2,3,6,8,8,14,17,25,32,44,45,57,59,60,62,64,68,70,71,100,260,1505,2000,2200,2450,2607]
        XCTAssertTrue(DesafioSomaDoisController().conseguimosAcharONumero(16, somandoDoisNumerosDaLista: numeros))
        XCTAssertFalse(DesafioSomaDoisController().conseguimosAcharONumero(2606, somandoDoisNumerosDaLista: numeros))
    
    }
    
    func testTodosOsCenarios() {
        var numeros: [Int] = []
        self.measure {
            for i in 0..<5000 {
                numeros.append(i*3)
            }
            XCTAssertTrue(DesafioSomaDoisController().conseguimosAcharONumero(15003, somandoDoisNumerosDaLista: numeros))
            XCTAssertFalse(DesafioSomaDoisController().conseguimosAcharONumero(29996, somandoDoisNumerosDaLista: numeros))
            XCTAssertTrue(DesafioSomaDoisController().conseguimosAcharONumero(3, somandoDoisNumerosDaLista: numeros))
        }
    }
    
}
