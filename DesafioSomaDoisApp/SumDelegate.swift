//
//  SumDelegate.swift
//  DesafioSomaDoisApp
//
//  Created by Leonardo Geus on 05/12/2017.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import UIKit

class SumObject: NSObject {
    func findSumInicial(numberOfDispatchs:Int,numbers:[Int],value:Int,completion: @escaping (_ result: String) -> Void) {
        var numbers = numbers
        let numberOfDispatchs = numberOfDispatchs
        let numberOfElementsInDispatch = numbers.count / numberOfDispatchs
        var firstsIndex:[Int] = []
        for i in 0...numbers.count {
            if (i % numberOfElementsInDispatch == 0) {
                firstsIndex.append(i)
            }
        }
        for i in firstsIndex {
            var newNumbers:[Int] = []
            let firstIndex = i
            let lastIndex = i+numberOfElementsInDispatch-1
            for j in (firstIndex...lastIndex) {
                if j < numbers.count {
                    newNumbers.append(numbers[j])
                }
            }
            findSum(name: i, numbers:numbers, numbersIn: newNumbers, value: value, completion: { (result) in
                completion(result)
            })
        }
    }
    
    private func findSum(name:Int,numbers:[Int],numbersIn:[Int],value:Int,completion: @escaping (_ result: String) -> Void) {
        let asyncQueue = DispatchQueue(label: "asyncQueue\(name)", attributes: .concurrent)
        asyncQueue.async {
            for num in numbers {
                for num2 in numbersIn {
                    if num2 + num == value {
                        completion("\(num2) \(num)")
                    }
                }
            }
        }
    }
    
}
