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
    var counter = 0
    
    @IBOutlet weak var playbutton: UIBarButtonItem!
    @IBOutlet weak var directionImage: UIImageView!
    @IBOutlet weak var timerLbl: UILabel!
    @IBOutlet weak var clickToPlay: UILabel!
    var random =  UInt32()

    override func viewDidLoad() {
        self.timerLbl.isHidden = false
    }
    @IBAction func startTimer(_ sender: UIBarButtonItem) {
        counter = 0
        self.timerLbl.isHidden = false
        timerObject = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("timer"), userInfo: nil, repeats: true)
        random = arc4random_uniform(80) + 10
        print(random)
        self.directionImage.isHidden = true
        self.playbutton.isEnabled = false
        self.clickToPlay.isHidden = true
        
    }
    
    func timer() {
        counter += 1
        self.timerLbl.text = String(counter)
//        print(timerObject.timeInterval)
        if counter < 10 && counter > 90 {
            timerObject.invalidate()
            
        }
        else{
//            print(Int(random))
            if counter == Int(random) {
                self.directionImage.isHidden =  false
                self.timerObject.invalidate()
                self.playbutton.isEnabled = true
                self.clickToPlay.isHidden  = false
                if random % 2 == 0 {
                    self.directionImage.image  = UIImage(named: "left")
                }else{
                    self.directionImage.image  = UIImage(named: "right")
                }
                self.timerLbl.isHidden = true
//                self.view.bringSubview(toFront: self.directionImage)
                
            }
        }

    }

}

