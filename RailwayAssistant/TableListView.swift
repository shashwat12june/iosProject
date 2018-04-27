//
//  TableListView.swift
//  RailwayAssistant
//
//  Created by MAC on 4/26/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class TableListView: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    
    @IBAction func backtaped(_ sender: Any) {
    
        var presentingViewController: UIViewController! = self.presentingViewController
        
        self.dismiss(animated: false) {
            // go back to MainMenuView as the eyes of the user
            presentingViewController.dismiss(animated: false, completion: nil)
        
    }
    }
    @IBOutlet weak var tableview: UITableView!
    let element=["canceledtrain","pnrimage","reschdl","trainlive"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate=self
        tableview.dataSource=self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   return element.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = tableview.indexPathsForSelectedRows
        let currentCell = tableView.cellForRow(at: indexPath)! as! CustomViewCell
        //getting the text of that cell
        let currentItem = currentCell.labeltext.text
        
        let alertController = UIAlertController(title: "Simplified iOS", message: "You Selected " + currentItem! , preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "Close Alert", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "customCell") as! CustomViewCell
        cell.cellview.layer.cornerRadius = cell.cellview.frame.height / 2
        cell.labeltext.text=element[indexPath.row]
        cell.imageview.image = UIImage(named: element[indexPath.row])
        cell.imageview.layer.cornerRadius = cell.imageview.frame.height / 2
        return cell
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
