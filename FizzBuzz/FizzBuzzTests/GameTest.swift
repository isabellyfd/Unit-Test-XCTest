//
//  GameTest.swift
//  FizzBuzz
//
//  Created by Isabelly Damascena on 17/07/17.
//  Copyright © 2017 Isabelly Damascena. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTest: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testGameStartAtZer() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        let _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        let _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result.right, true)
    }
    
    func testIFMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result.right, false)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result.right, true)
    }
    
    func testIfBuzzMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result.right, false)
    }
    
    func testIFFizzBuzzMoveIsRight() {
        game.score = 14
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result.right, true)
    }
    
    func testIfFizzBuzzIsWrong() {
        game.score = 1
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result.right, false)
        
    }
    
    func testIfNumerMoveIsRight() {
        game.score = 0
        let result = game.play(move: "1")
        XCTAssertEqual(result.right, true)
    }
    
    func testIfNumberMoveIsWrong(){
        game.score = 1
        let result = game.play(move: "1")
        XCTAssertEqual(result.right, false)
    }
    
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }

    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore(){
        let response = game.play(move: "1")
        XCTAssertNotNil(response.score)
    }
    
}
