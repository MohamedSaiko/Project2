//
//  GamePlanner.swift
//  project2
//
//  Created by Mohamed Sayed on 29.11.23.
//

import Foundation

struct GamePlanner {
    var countries = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
    var score = 0
    var correctAnswer = 0
    var numberOfQuestions = 0
    
    mutating func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    mutating func checkCorrectAnswer(buttonTag: Int) -> String {
        numberOfQuestions += 1
        if buttonTag == correctAnswer {
            score += 1
            return "Correct"
        } else {
            return "Wrong! That’s the flag of \(countries[buttonTag].uppercased())"
        }
    }
    mutating func resetGame() {
        score = 0
        numberOfQuestions = 0
    }
}
