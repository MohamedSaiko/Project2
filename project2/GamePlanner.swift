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
    
    func askQuestion(_ button1: UIButton, _ button2: UIButton, _ button3: UIButton ) {
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }
}
