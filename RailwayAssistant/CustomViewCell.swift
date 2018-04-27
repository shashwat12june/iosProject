//
//  CustomViewCell.swift
//  RailwayAssistant
//
//  Created by MAC on 4/26/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class CustomViewCell: UITableViewCell {

    @IBOutlet weak var cellview: UIView!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var labeltext: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
