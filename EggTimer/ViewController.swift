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
    var counter: Int = 0
    var setTime: Int = 0
  

    @IBOutlet weak var softPic: UIButton!
    @IBOutlet weak var mediumPic: UIButton!
    @IBOutlet weak var hardPic: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var counterDisplay: UILabel!
    @IBOutlet weak var cookingProgress: UIProgressView!
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        print(hardness)
        switch hardness {
        case "Soft":
            startTimer(time: softTime, sender: sender)
        case "Medium":
            startTimer(time: mediumTime, sender: sender)
        case "Hard":
startTimer(time:hardTime, sender: sender)
        default:
print("none")        }
        
    }
    

    func startTimer(time: Int, sender: UIButton)  {
        gameTimer?.invalidate()
    titleLabel.text = "How do you like your eggs?"
        counter = time
        setTime = time
       gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timer), userInfo: nil, repeats: true)
    
    }
     @objc func timer() {
        
        if counter > 0 {
            print(counter)
            counterDisplay.text = String(counter)
            cookingProgress.progress = Float(setTime) / (Float(counter) * 10)
           
            print(Float(setTime) / (Float(counter) * 10) )
            counter -= 1}
        else {
            counterDisplay.text = String(0)
            titleLabel.text = "Done"
            cookingProgress.progress = 1
            gameTimer?.invalidate()
        }
    }
}


