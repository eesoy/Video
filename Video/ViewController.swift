//
//  ViewController.swift
//  Video
//
//  Created by soyoung on 2017. 12. 23..
//  Copyright © 2017년 soyoung. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playVideo (url: URL){
        let playerVC = AVPlayerViewController()
        playerVC.player = AVPlayer(url: url)
        present(playerVC, animated: true, completion: {
            print("AVPlayerViewController재생 시작")
            playerVC.player?.play()
        })
    }

    @IBAction func playLocalClicked(_ sender: UIButton) {
        if let path = Bundle.main.path(forResource: "FastTyping", ofType: "mp4") {
            playVideo(url: URL(fileURLWithPath: path))
        }
    }
    
    @IBAction func playLinkCilcked(_ sender: UIButton) {
        playVideo(url: URL(string: "http://www.ithinknext.com/mydata/board/files/F201308021823010.mp4")!)
    }
    
}

