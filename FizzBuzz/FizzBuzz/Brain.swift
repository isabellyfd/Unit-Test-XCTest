//
//  Brain.swift
//  FizzBuzz
//
//  Created by Isabelly Damascena on 17/07/17.
//  Copyright © 2017 Isabelly Damascena. All rights reserved.
//

import UIKit

class Brain: NSObject {
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return (number % divisor == 0)
    }
    
    func check(number: Int) -> String? {
        if self.isDivisibleBy(divisor: 15, number: number){
            return "FizzBuzz"
        }else if self.isDivisibleBy(divisor: 3, number: number){
            return "Fizz"
        }else if self.isDivisibleBy(divisor:5, number: number){
            return "Buzz"
        }else {
            return "\(number)"
        }
        return nil
    }

}
