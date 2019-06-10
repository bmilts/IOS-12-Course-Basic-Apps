//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Brendan Milton on 22/04/2019.
//  Copyright © 2019 Brendan Milton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallIndex: Int = 0
    
    @IBOutlet weak var ballImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateBallImage()

    }


    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        updateBallImage()
        
    }
    
    func updateBallImage(){
        
        randomBallIndex = Int.random(in: 0 ... 4)
        
        ballImage.image = UIImage(named: ballArray[randomBallIndex])
        
    }
}

