//
//  ViewController.swift
//  project2
//
//  Created by Mohamed Sayed on 29.11.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var gamePlanner = GamePlanner()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        gamePlanner.askQuestion(button1, button2, button3)
        title = gamePlanner.countries[gamePlanner.correctAnswer]
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == gamePlanner.correctAnswer {
            title = "Correct"
            gamePlanner.score += 1
        } else {
            title = "Wrong"
            gamePlanner.score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "Your score is \(gamePlanner.score).", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Contiue", style: .default, handler: { [weak self] action in
            guard let self = self else {
                return
            }
            self.gamePlanner.askQuestion(self.button1, self.button2, self.button3, action: action)
            self.title = self.gamePlanner.countries[self.gamePlanner.correctAnswer]
        }))
        present(ac,animated: true)
    }
}
