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
  

    @IBOutlet weak var softPic: UIButton!
    @IBOutlet weak var mediumPic: UIButton!
    @IBOutlet weak var hardPic: UIButton!
    
    @IBOutlet weak var counterDisplay: UILabel!
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        print(hardness)
        switch hardness {
        case "Soft":
            gameTimer?.invalidate()
            startTimer(time: softTime, sender: sender)
            
        case "Medium":
          gameTimer?.invalidate()
            startTimer(time: mediumTime, sender: sender)
        case "Hard":
          gameTimer?.invalidate()
startTimer(time:hardTime, sender: sender)
        default:
print("none")        }
        
    }
    

    func startTimer(time: Int, sender: UIButton)  {
    
        counter = time
       gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timer), userInfo: nil, repeats: true)
    
    }
     @objc func timer() {
        if counter > -1 {
            print(counter)
            counterDisplay.text = String(counter)
            counter -= 1}
        else {
            gameTimer?.invalidate()
        }
    }
    
  
}


