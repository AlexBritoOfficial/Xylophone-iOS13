//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
      
        sender.layer.opacity = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.layer.opacity = 1.0
        }
        playSound(soundFile: sender.currentTitle!)
    }
    
    func playSound(soundFile: String) {
        let url = Bundle.main.url(forResource: soundFile, withExtension: "wav")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        
        player!.play()
                
    }
    
}

