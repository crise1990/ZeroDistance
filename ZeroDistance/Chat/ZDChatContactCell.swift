//
//  ZDChatContactCell.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/6/9.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDChatContactCell: UITableViewCell {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nickName: UILabel!
    
    @IBOutlet weak var chatBrief: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2.0
        avatarImage.layer.masksToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
