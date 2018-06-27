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
        let selectedSoundFile = "note\(sender.tag)"
        let url = Bundle.main.url(forResource: selectedSoundFile, withExtension: "wav")!
        
        player = try? AVAudioPlayer(contentsOf: url)
        
        if let player = player {
            player.play()
        }
        
        
    }
    
  

}

