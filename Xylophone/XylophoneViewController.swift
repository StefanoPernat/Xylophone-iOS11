//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class XylophoneViewController: UIViewController{
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(which: sender.tag)
    }
    
    func playSound(which sound: Int) {
        let soundUrl = Bundle.main.url(forResource: "note\(sound)", withExtension: "wav")!
        
        player = try? AVAudioPlayer(contentsOf: soundUrl)
        if let player = player {
            player.play()
        }
    }
    
  

}

