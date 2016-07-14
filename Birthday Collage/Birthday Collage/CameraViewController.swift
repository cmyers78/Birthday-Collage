//
//  CameraViewController.swift
//  Birthday Collage
//
//  Created by Christopher Myers on 7/14/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController {
    
    var receivedImage : UIImage?
    
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let theImage = self.receivedImage {
            
            self.backgroundImageView.image = theImage
        }
    
    }
}