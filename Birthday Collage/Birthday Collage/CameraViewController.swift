//
//  CameraViewController.swift
//  Birthday Collage
//
//  Created by Christopher Myers on 7/14/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var receivedImage : UIImage?
    
    let chooseImage = UIImagePickerController()
    
    @IBOutlet weak var cameraImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.chooseImage.delegate = self
    }

    
    @IBAction func cameraButtonTapped(sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.Camera) {
            self.chooseImage.sourceType = .Camera
        }
        
        else {
            self.chooseImage.sourceType = .PhotoLibrary
        }
        
        self.chooseImage.allowsEditing = true
        self.presentViewController(self.chooseImage, animated: true, completion: nil)
    }
}