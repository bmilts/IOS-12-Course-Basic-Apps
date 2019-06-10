//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    // Declare global variables
    var audioPlayer : AVAudioPlayer!

    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // Trigger all buttons with same IBAction using tag property to differentiate
    @IBAction func notePressed(_ sender: UIButton) {

        playSound(soundFileName : soundArray[sender.tag - 1])
    }
    
    func playSound(soundFileName : String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        // Try play audi
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL! )
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }

}

