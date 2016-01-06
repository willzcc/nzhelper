//
//  JobTableViewCell.swift
//  nzhelper
//
//  Created by Q on 16/1/4.
//  Copyright © 2016年 com.flytokiwi. All rights reserved.
//

import UIKit

class JobTableViewCell: UITableViewCell {
    
    @IBOutlet weak var jobType: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        jobType.layer.borderColor = UIColor.blueColor().CGColor
        jobType.layer.borderWidth = 0.5
        jobType.layer.cornerRadius = 10
        print("awake frome nib")
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("init jobtype coder")
    }
}
