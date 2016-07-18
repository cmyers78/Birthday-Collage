//
//  CollageViewController.swift
//  Birthday Collage
//
//  Created by Christopher Myers on 7/14/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit
import AVFoundation

class CollageViewController: UIViewController {
    
    var receivedBackground : UIImage?
    var receivedSelfie : UIImage?
    
    var hBD : AVAudioPlayer?
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var selfieImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.backgroundImageView.image = receivedBackground
        self.selfieImageView.image = receivedSelfie
        
        self.hBD = createAudioPlayer("HBD", fileExt: "mp3")
        self.hBD?.play()
    }

    func createAudioPlayer(filename: String, fileExt: String) -> AVAudioPlayer? {
        
        var audioPlayer : AVAudioPlayer?
        
        // Get a pointer to the reference of the file
        if let filePath = NSBundle.mainBundle().URLForResource(filename, withExtension: fileExt) {
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOfURL: filePath)
                
                audioPlayer?.volume = 1.0
                audioPlayer?.prepareToPlay()
                
            } catch {
                
                print("An error occured")
                
            }
            
        } else {
            print("I cant find the file")
        }
        
        return audioPlayer
    }

    @IBAction func playTapped(sender: UIButton) {
        
        self.hBD?.play()
    }


    
    @IBAction func stopTapped(sender: UIButton) {
        self.hBD?.stop()
    }
    
    

}
