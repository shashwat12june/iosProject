//
//  TabLayout.swift
//  RailwayAssistant
//
//  Created by MAC on 4/24/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class TabLayout: UIViewController {
    var textMessage="Hiiiiiii"
@IBOutlet weak var DisplayText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
DisplayText.text=textMessage
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func BackPressed(_ sender: Any) {
        var presentingViewController: UIViewController! = self.presentingViewController
        
        self.dismiss(animated: false) {
            // go back to MainMenuView as the eyes of the user
            presentingViewController.dismiss(animated: false, completion: nil)
    }
    }
    @IBAction func tab1buttonTapped(_ sender: Any) {
        let vc = UIStoryboard(name:"Main",bundle:nil).instantiateViewController(withIdentifier: "tab1button") as? tab1Button
       
    }
    
}
