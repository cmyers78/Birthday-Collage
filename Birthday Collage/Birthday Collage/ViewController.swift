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

    @IBAction func blueBackgroundTapped(sender: UIButton) {
        
        
        self.backgroundImage = UIImage(named: "blueBackground")
        
        performSegueWithIdentifier("backgroundSegue", sender: nil)
    }
    
    @IBAction func greenBackgroundTapped(sender: UIButton) {
    }
    
    @IBAction func redBackgroundTapped(sender: UIButton) {
    }
    
    @IBAction func castleBackgroundTapped(sender: UIButton) {
    }
    
    @IBAction func cityBackgroundTapped(sender: UIButton) {
    }
    
    @IBAction func funBackgroundTapped(sender: UIButton) {
    }

    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        <#code#>
    }
}

