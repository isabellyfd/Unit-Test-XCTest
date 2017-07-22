//
//  Game.swift
//  FizzBuzz
//
//  Created by Isabelly Damascena on 17/07/17.
//  Copyright © 2017 Isabelly Damascena. All rights reserved.
//

import UIKit

class Game: NSObject {
    var score: Int
    let brain : Brain!
    
    override init() {
        self.score = 0
        self.brain = Brain()
    }
    
    func play(move: String) -> Bool {
        let result = brain.check(number: score + 1)
        
        if result == move {
            self.score += 1
        }
        return (result == move)
    }
}
