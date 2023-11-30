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
        updateFlags()
    }
    func updateFlags(action: UIAlertAction! = nil) {
        gamePlanner.askQuestion()
        button1.setImage(UIImage(named: gamePlanner.countries[0]), for: .normal)
        button2.setImage(UIImage(named: gamePlanner.countries[1]), for: .normal)
        button3.setImage(UIImage(named: gamePlanner.countries[2]), for: .normal)
        title = gamePlanner.countries[gamePlanner.correctAnswer].uppercased()
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        let title = gamePlanner.checkCorrectAnswer(buttonTag: sender.tag)
        if gamePlanner.numberOfQuestions == 10 {
            let ac = UIAlertController(title: "Final Score", message: "\(gamePlanner.score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Play Again", style: .cancel, handler: { [weak self] action in
                guard let self = self else {
                    return
                }
                self.gamePlanner.resetGame()
                self.updateFlags(action: action)
            }))
            present(ac, animated: true)
        }
        let ac = UIAlertController(title: title, message: "Your score is \(gamePlanner.score).", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Contiue", style: .default, handler: updateFlags))
        present(ac,animated: true)
    }
}
