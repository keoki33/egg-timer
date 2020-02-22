//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   let softTime = 5
    let mediumTime = 8
    let hardTime = 12
    var gameTimer: Timer?

    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        print(hardness)
        switch hardness {
        case "Soft":
            print(softTime)
            gameTimer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(timer), userInfo: nil, repeats: true)

        case "Medium":
            print(mediumTime)
            gameTimer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(timer), userInfo: nil, repeats: true)

        case "Hard":
            print(hardTime)
            gameTimer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(timer), userInfo: nil, repeats: true)

        default:
print("none")        }
        
    }
    
    
    func timer (time: Int) {
      print(time)
    }
    
    
    
    
    
}


