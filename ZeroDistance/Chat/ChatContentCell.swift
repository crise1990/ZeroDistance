//
//  ChatContentCell.swift
//  YepIM
//
//  Created by zhangkuo on 16/5/17.
//  Copyright © 2016年 zhangkuo. All rights reserved.
//

import UIKit
import SnapKit
class ChatContentCell: UITableViewCell {
    
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var chatTextLabel: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    
    var imageName:String!

    var chatContent:ChatContent! {
        
        didSet {
            if chatContent?.type == 0 {
                imageName = "avatar01"
            }else {
                imageName = "avatar02"
            }
 
            if let hideTime = chatContent?.ishideTime {
                if hideTime {
                    timeLabel.hidden = true
                    timeLabel.snp_updateConstraints(closure: { (make) in
                        make.height.equalTo(0)
                    })
                } else {
                    timeLabel.text = chatContent?.time
                    timeLabel.hidden = false
                    timeLabel.snp_updateConstraints(closure: { (make) in
                        make.height.equalTo(20)
                    })
                }
            }
            layoutIfNeeded()
            avatarImage.image = UIImage(named: imageName)

            chatTextLabel.setTitle(chatContent?.text, forState: UIControlState.Normal)
            layoutIfNeeded()

            chatTextLabel.snp_updateConstraints { (make) in
                let buttonH = (chatTextLabel.titleLabel?.frame.size.height)! + 30
                make.height.equalTo(buttonH)
            }
            layoutIfNeeded()//强制更新

            let buttonMaxY = CGRectGetMaxY(chatTextLabel.frame)
            let iconMaxY = CGRectGetMaxY(avatarImage.frame)
            chatContent?.cellHeight = max(buttonMaxY,iconMaxY) + 10
            
            
        }
    }

    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        avatarImage.layer.cornerRadius = avatarImage.frame.size.width / 2
        avatarImage.layer.masksToBounds = true
        
        avatarImage.layer.borderWidth = 1.5
        avatarImage.layer.borderColor = UIColor.whiteColor().CGColor
 
        chatTextLabel.titleLabel?.numberOfLines = 0
        selectionStyle = UITableViewCellSelectionStyle.None

        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
       
    }

}
