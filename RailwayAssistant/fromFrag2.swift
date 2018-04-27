//
//  fromFrag2.swift
//  RailwayAssistant
//
//  Created by MAC on 4/25/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class fromFrag2: UIViewController {
    
    
    

    @IBOutlet weak var viewContainer: UIView!
    var simpleView1: UIView!
    var simpleView2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        simpleView1=segmented1().view
        simpleView2=segmented2().view
        viewContainer.addSubview(simpleView2)
        viewContainer.addSubview(simpleView1)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SegmentedTabs(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex
        {
        case 0:
            viewContainer.bringSubview(toFront: simpleView1)
            break
        case 1:
            viewContainer.bringSubview(toFront: simpleView2)
            break
        default:
            break
        }
    }
    
    @IBAction func backPress(_ sender: Any) {
        var presentingViewController: UIViewController! = self.presentingViewController
        
        self.dismiss(animated: false) {
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

}
