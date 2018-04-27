//
//  secondScreen.swift
//  RailwayAssistant
//
//  Created by MAC on 4/23/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class secondScreen: UIViewController {
    
    var message=""
    @IBOutlet weak var TextView: UITextView!
 @IBOutlet weak var ImageDisplay: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
TextView.text=message
        if message=="Reschduled Trains"
        {var yourImage: UIImage = UIImage(named: "reschdl")!
            ImageDisplay.image=yourImage
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func BackTapped(_ sender: Any) {
        var presentingViewController: UIViewController! = self.presentingViewController
        
        self.dismiss(animated: false) {
            // go back to MainMenuView as the eyes of the user
            presentingViewController.dismiss(animated: false, completion: nil)
    }
    
    }
   

}
