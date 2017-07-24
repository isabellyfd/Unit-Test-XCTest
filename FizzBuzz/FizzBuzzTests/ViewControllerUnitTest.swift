//
//  ViewControllerUnitTest.swift
//  FizzBuzzTests
//
//  Created by Isabelly Damascena on 22/07/17.
//  Copyright © 2017 Isabelly Damascena. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTest: XCTestCase {
    
    var viewController : ViewController!
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        self.viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow?.rootViewController = self.viewController
        
        
        let _ = viewController.view
        
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func test() {
       XCTAssertTrue(true)
    }
    
    func testMove1IncrementsStore(){
        self.viewController.play(move: "1")
        let newScore = self.viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementStore() {
        self.viewController.play(move: "1")
        self.viewController.play(move: "2")
        let newScore = self.viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(self.viewController.game)
    }
    
    func testFizzIncrementScore() {
        self.viewController.game?.score = 2
        self.viewController.play(move: "Fizz")
        let newScore = self.viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        self.viewController.game?.score = 4
        self.viewController.play(move: "Buzz")
        
        let newScore = self.viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        self.viewController.game?.score = 14
        self.viewController.play(move: "FizzBuzz")
        
        let newScore = self.viewController.gameScore
        
        XCTAssertEqual(newScore, 15)
    }
    
    
    func testUserEnterIncorrectMove() {
        self.viewController.game?.score = 3
        self.viewController.play(move: "Fizz")
        let newScore = self.viewController.gameScore
        
        XCTAssertEqual(newScore, 3)
    }
}
