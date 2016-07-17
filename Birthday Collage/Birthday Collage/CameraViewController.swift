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
    
    var theImage : UIImage?
    
    @IBOutlet weak var clickContinueButtonOutlet: UIButton!
    
    // Creating a UIImagePickerController Instance
    
    let chooseImage = UIImagePickerController()
    
    @IBOutlet weak var cameraImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.chooseImage.delegate = self
    }

    @IBAction func continueButtonTapped(sender: UIButton) {
        
        performSegueWithIdentifier("collageSegue", sender: nil)
        
        
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
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        if let pickedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            self.cameraImageView.contentMode = .ScaleAspectFill
            self.cameraImageView.image = pickedImage
            self.theImage = pickedImage
        }
        
        dismissViewControllerAnimated(true, completion: nil)

        
        self.clickContinueButtonOutlet.hidden = false
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "collageSegue" {
            
            if let collageController = segue.destinationViewController as? CollageViewController {
                
                collageController.receivedBackground = self.receivedImage
                collageController.receivedSelfie = self.theImage
            }
        }
    }
}