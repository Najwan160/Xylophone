//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
//library buat audio


class ViewController: UIViewController {
    var player : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


   
    @IBAction func soundButton(_ sender: UIButton) {
        playsound(sound : sender.currentTitle!)
    }
    
    func playsound(sound : String){
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    

}

