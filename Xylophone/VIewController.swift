//
//  ViewController.swift
//  Xylophone
//
//  Created by Atul Bansal on 25/10/18.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    var soundFileName : String = ""
    
    let soundArray = ["Doori", "Ishqbazian", "Jatt_Di_Clip_2", "Naiyo_Jaana", "Tera_Ghata", "Toronto", "Wait","Diamond"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        soundFileName = soundArray[sender.tag]
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: soundFileName, withExtension: "mp3")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
        } catch {
            print(error)
        }
        audioPlayer.play()
    }
}

