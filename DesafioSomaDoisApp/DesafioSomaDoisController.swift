//
//  DesafioSomaDoisController.swift
//  DesafioSomaDoisApp
//
//  Created by Diler Barbosa on 01/12/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation

class DesafioSomaDoisController {
    
    func conseguimosAcharONumero(_ valor: Int, somandoDoisNumerosDaLista numbers:[Int]) -> Bool{
        
        for num in numbers {
            var numbersNew = numbers
            numbersNew.remove(at: findIndexOfNumberInArray(numbers: numbers, number: num))
            for num2 in numbersNew {
                if num2 + num == valor {
                    return true
                }
            }
        }
        
        return false
    }
    
    func findIndexOfNumberInArray(numbers:[Int], number:Int) -> Int {
        var index = 0
        for num in numbers {
            if num == number {
                return index
            }
            index = index + 1
        }
        return -1
    }
    
}
