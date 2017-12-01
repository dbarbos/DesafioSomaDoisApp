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
    
}
