//
//  ViewController.swift
//  ShozabBhai
//
//  Created by Ali Mehmood on 28/04/2017.
//  Copyright © 2017 Ali Mehmood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timerObject = Timer()
    var timerObject2 = Timer()
    var counter = 30
    var counter2 = 30
    
    @IBOutlet weak var playButton2: UIButton!
    @IBOutlet weak var playButton1: UIButton!
    @IBOutlet weak var color1: UIView!
    @IBOutlet weak var color2: UIView!
    var random =  UInt32()
    var random2 =  UInt32()

    override func  viewDidLoad() {
//        self.timerLbl.isHidden = false
//        self.color1.isHidden = false
//        self.color2.isHidden = false
        self.color1.backgroundColor = UIColor.lightGray
        self.color2.backgroundColor = UIColor.lightGray
    }
    @IBAction func startTimer(_ sender: UIButton) {
        counter = 30
//        self.timerLbl.isHidden = false
        timerObject = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timer), userInfo: nil, repeats: true)
        random = arc4random_uniform(80) + 30
        print(random)
//        self.color1.isHidden = true
        self.playButton1.isEnabled = false
//        self.playButton2.isHidden = true
//        self.color2.isHidden = true
        
    }
    @IBAction func startTimer2(_ sender: UIButton) {
        counter2 = 30
        //        self.timerLbl.isHidden = false
        timerObject2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timer2), userInfo: nil, repeats: true)
        random2 = arc4random_uniform(80) + 30
        print(random2)
//        self.color2.isHidden = true
        self.playButton2.isEnabled = false
//        self.playButton1.isHidden = true
//        self.color1.isHidden = true
    }
    
    func timer() {
        counter += 1
        print(counter)
        if counter < 30 && counter > 120 {
            timerObject.invalidate()
        }
        else{
            if counter == Int(random) {
//                self.color1.isHidden =  false
                self.timerObject.invalidate()
                self.playButton1.isEnabled = true
                
                if random % 2 == 0 {
                    self.color1.backgroundColor = UIColor.red
                }else{
                    self.color1.backgroundColor = UIColor.blue
                }
//                self.color1.isHidden =  false
//                self.color2.isHidden =  false
//                self.playButton2.isHidden = false
            }
        }

    }
    func timer2() {
        counter2 += 1
        print(counter2)
        if counter2 < 30 && counter2 > 120 {
            timerObject2.invalidate()
        }
        else{
            if counter2 == Int(random2) {
//                self.color1.isHidden =  false
                self.timerObject2.invalidate()
                self.playButton2.isEnabled = true
                
                if random2 % 2 == 0 {
                    self.color2.backgroundColor = UIColor.green
                }else{
                    self.color2.backgroundColor = UIColor.yellow
                }
//                self.color1.isHidden =  false
//                self.color2.isHidden =  false
//                self.playButton1.isHidden = false
            }
        }
        
    }

}

