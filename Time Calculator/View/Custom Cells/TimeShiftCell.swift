//
//  TimeShiftCell.swift
//  Time Calculator
//
//  Created by Ethan Brown on 3/9/18.
//  Copyright © 2018 Ethan Brown. All rights reserved.
//

import UIKit

class TimeShiftCell: UITableViewCell {

    @IBOutlet weak var StartTime: UILabel!
    @IBOutlet weak var EndTime: UILabel!
    @IBOutlet weak var TotalShiftTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
