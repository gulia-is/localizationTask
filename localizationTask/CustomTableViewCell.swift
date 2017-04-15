//
//  CustomTableViewCell.swift
//  localizationTask
//
//  Created by Gulia_Is on 15.04.17.
//  Copyright © 2017 iOSLab. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
   
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
