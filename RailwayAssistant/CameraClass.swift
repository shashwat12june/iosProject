//
//  CameraClass.swift
//  RailwayAssistant
//
//  Created by MAC on 4/26/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class CameraClass: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    
    @IBAction func ChooseImage(_ sender: Any) {
    
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        //        let gffbm = UIAlertController(title : "Photo Source", message: "choose a source", preferredStyle = .actionSheet)
        
        let actionMessage = UIAlertController(title: "Photo Source", message: "Choose a source", preferredStyle: .actionSheet)
        
        actionMessage.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action: UIAlertAction) in
            
                imagePickerController.sourceType = .camera
                imagePickerController.allowsEditing = false
                self.present(imagePickerController, animated: true, completion: nil)
            
        
        }))
        actionMessage.addAction(UIAlertAction(title: "Photo Libirary", style: .default, handler: { (action: UIAlertAction) in imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController,animated: true, completion: nil)
        }))
        actionMessage.addAction(UIAlertAction(title: "Cancel", style: .default, handler:nil))
        self.present(actionMessage,animated: true, completion: nil)
        
    }
    @IBOutlet weak var backTapped: UIBarButtonItem!
    @IBAction func backTapped(_ sender: Any) {
        var presentingViewController: UIViewController! = self.presentingViewController
        
        self.dismiss(animated: true) {
            // go back to MainMenuView as the eyes of the user
            presentingViewController.dismiss(animated: false, completion: nil)
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image=image
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
