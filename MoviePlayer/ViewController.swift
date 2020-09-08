//
//  ViewController.swift
//  MoviePlayer
//
//  Created by sung hello on 2020/09/07.
//  Copyright © 2020 sung hello. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnPlayInternalMovie(_ sender: UIButton) {
        let filePath: String? = Bundle.main.path(forResource: "movie", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)
        
        playVideo(url: url)
        
    }
    
    @IBAction func btnPlayExternalMovie(_ sender: UIButton) {
        
        var tmp: String = ""
        tmp = "https://dl.dropboxusercontent.com/s/e38auz050w2mvud/Fireworks.mp4"
        //tmp = "http://techslides.com/demos/sample-videos/small.mp4"
        
        let url = NSURL(string: tmp)!
        
        playVideo(url: url)
    }
    
    private func playVideo(url: NSURL){
        let playerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        
        self.present(playerController, animated: true){
            player.play()
        }
    }
    
}

