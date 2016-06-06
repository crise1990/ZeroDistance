//
//  ZDMessageCell.swift
//  ZeroDistance
//
//  Created by mac on 16/6/2.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

struct messageBox {
    let avatar :String
    let name : String
    let content : String
    let time : String
}

class ZDMessageCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        avatarImageView.layer.cornerRadius = avatarImageView.frame.width / 2.0
        avatarImageView.layer.masksToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
