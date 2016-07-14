//
//  ViewController.swift
//  Birthday Collage
//
//  Created by Christopher Myers on 7/14/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var backgroundImage : UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func sendImage(imageName : String) {
        self.backgroundImage = UIImage(named: imageName)
        
        performSegueWithIdentifier("backgroundSegue", sender: nil)
    
    }

    @IBAction func blueBackgroundTapped(sender: UIButton) {
        self.sendImage("blueBackground")
    }
    
    @IBAction func greenBackgroundTapped(sender: UIButton) {
        self.sendImage("greenBackground")
    }
    
    @IBAction func redBackgroundTapped(sender: UIButton) {
        self.sendImage("redBackground")
    }
    
    @IBAction func castleBackgroundTapped(sender: UIButton) {
        self.sendImage("castleBackground")
    }
    
    @IBAction func cityBackgroundTapped(sender: UIButton) {
        self.sendImage("cityBackground")
    }
    
    @IBAction func funBackgroundTapped(sender: UIButton) {
        self.sendImage("funBackground")
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "backgroundSegue" {
            
            if let controller = segue.destinationViewController as? CameraViewController {
                
                controller.receivedImage = self.backgroundImage
            }
        }
    }
}

