//
//  ViewController.swift
//  Xylophone
//
//  Created by Mac on 5.12.2021.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(buttonText: sender.currentTitle!)
    }
    
    
    func playSound(buttonText:String) {
        let url = Bundle.main.url(forResource: buttonText, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

}
