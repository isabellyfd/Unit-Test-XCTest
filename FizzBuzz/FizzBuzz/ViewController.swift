//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Isabelly Damascena on 17/07/17.
//  Copyright © 2017 Isabelly Damascena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gameScore : Int?
    
    public var game : Game?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.game = Game()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func play(move: String){
        guard let unwrappedGame = game else {
            print("Game id nil!")
            return
        }
        
        let response = unwrappedGame.play(move: move)
        self.gameScore = response.score
    }
}

