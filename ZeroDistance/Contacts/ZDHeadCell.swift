//
//  ZDHeadCell.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/6/9.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDHeadCell: UITableViewCell {
    let buttonW: CGFloat = 78.0
    let buttonH: CGFloat = 78.0
    let imageName = ["contact1","contact2","contact3","contact4"]
    let titleName = ["手机通讯录","企业联系人","群组联系人","关注联系人"]

    @IBOutlet weak var ZDcontentView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let margin: CGFloat = (UIScreen.mainScreen().bounds.width - 30 - 4 * buttonW) / 3
        for i in 0..<4 {
            let btn:ZDContactUIButton = ZDContactUIButton()
            btn.frame = CGRectMake(CGFloat(i) * (buttonW + margin),10, buttonW, buttonH)
            btn.setImage(UIImage(named: imageName[i]), forState: UIControlState.Normal)
            btn.setTitle(titleName[i], forState: UIControlState.Normal)
//            btn.backgroundColor = UIColor.redColor()
            btn.titleLabel?.font = UIFont.systemFontOfSize(12.0)
            btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
            
            btn.titleLabel?.textAlignment = NSTextAlignment.Center
            btn.setBackgroundImage(UIImage(named: "Buttonbackimage"), forState: UIControlState.Highlighted)
            btn.adjustsImageWhenHighlighted = false
            ZDcontentView.addSubview(btn)
            
        }
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
