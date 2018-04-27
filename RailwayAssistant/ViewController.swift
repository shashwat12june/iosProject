//
//  ViewController.swift
//  RailwayAssistant
//
//  Created by MAC on 4/23/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }



    @IBOutlet weak var microphone: UIButton!
    @IBOutlet weak var Reschduled: UIButton!

    @IBAction func LiveStatus(_ sender: Any) {
        
    }
    @IBAction func rescheduledTapped(_ sender: UIButton) {
        var message="Reschduled Trains"
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "secondView")
    
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondView") as? secondScreen
        vc?.message=message
        present(vc!, animated: true, completion: nil)
    
    }
    
    @IBAction func cancelledTrainsTapped(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "segmentScreen") as? fromFrag2
        //let vc=UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "segmentedFrag") as? tab1Button
        present(vc!, animated: true,completion: nil)
    }
    
    @IBAction func PnrButtonTapped(_ sender: Any) {
        var message="Reschduled Trains"
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabLayout") as? TabLayout
        vc?.textMessage=message
    }
    //    @IBAction func micTapped(_ sender: Any) {
//         let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabLayout") as? TabLayout
//        present(vc!,animated: true, completion:nil)
//    }
}

