//
//  TaskCell.swift
//  listDaitems
//
//  Created by Fenkins on 18/03/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var task: UILabel!
    @IBOutlet weak var subtask: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
