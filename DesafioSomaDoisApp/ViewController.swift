//
//  ViewController.swift
//  DesafioSomaDoisApp
//
//  Created by Diler Barbosa on 01/12/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        var numeros: [Int] = []
        for i in 0..<5000 {
            numeros.append(i*3)
        }
        measureTime(numeros: numeros, numberDispatchs: num)
        */
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var num = 1
    
    func measureTime(numeros:[Int],numberDispatchs:Int) {
        num = num + 1
        if numberDispatchs <= numeros.count/2 {
            getTimes(numeros: numeros, value: 29991, numberDispatchs: numberDispatchs, completion: { (bool) in
                self.measureTime(numeros: numeros, numberDispatchs: self.num)
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var passed:[Int] = []
    
    func getTimes(numeros:[Int],value:Int,numberDispatchs:Int,completion: @escaping (_ result: Bool) -> Void) {
        let startTime = CFAbsoluteTimeGetCurrent()
        let sum = SumObject()
        sum.findSumInicial(numberOfDispatchs:numberDispatchs,numbers: numeros, value: value) { (string) in
            if !self.passed.contains(numberDispatchs) {
                self.passed.append(numberDispatchs)
                let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
                
                print("numberDispatchs:\(numberDispatchs)  times:\(timeElapsed)")
                
                completion(true)
            }
        }
    }
    
}

