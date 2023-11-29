//
//  GamePlanner.swift
//  project2
//
//  Created by Mohamed Sayed on 29.11.23.
//

import Foundation
import UIKit

struct GamePlanner {
    var countries = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
    var score = 0
    var correctAnswer = 0
    var numberOfQuestions = 0
    
    mutating func askQuestion(_ button1: UIButton, _ button2: UIButton, _ button3: UIButton, action: UIAlertAction! = nil) {
        countries.shuffle()
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        correctAnswer = Int.random(in: 0...2)
    }
}
