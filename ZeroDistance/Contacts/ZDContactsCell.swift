//
//  ZDContactsCell.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/5/29.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDContactsCell: UITableViewCell {
    @IBOutlet weak var avatarImageView: UIImageView!

    @IBOutlet weak var userNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        if (avatarImageView != nil) {
            avatarImageView.layer.cornerRadius = avatarImageView.frame.width / 2.0
            avatarImageView.layer.masksToBounds = true
        }
        
//        avatarImageView.layer.borderWidth = 1.5
//        avatarImageView.layer.borderColor = UIColor.whiteColor().CGColor
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
