//
//  DesafioSomaDoisController.swift
//  DesafioSomaDoisApp
//
//  Created by Diler Barbosa on 01/12/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation

class DesafioSomaDoisController {
    func conseguimosAcharONumero(_ valor: Int, somandoDoisNumerosDaLista numbers:[Int]) -> Bool {
        for num in numbers {
            var numbersNew = numbers
            if let _ = numbers.index(of: num)  {
                numbersNew.remove(at: numbers.index(of: num)!)
            }
            for num2 in numbersNew {
                if num2 + num == valor {
                    return true
                }
            }
        }
        return false
    }
}
