//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func getNumber(x: Int, y: Int) {
    for number in 0...y {
        if number % x == 0 {
            print(number)
        }
    }
}
//getNumber(0, y: 55)

func primeNumbers(y:Int) {
    for number in 1..<y {
        
        var isPrime: Bool = true
        
        if number > 2 {
            for numero in 2..<number {
                if number % numero == 0 {
                    isPrime = false
                    break
                }
            }
            
        }
        if isPrime {
            print("\(number) is a Prime Number")
        }
    }
    
}


