//
//  ZDContactUIButton.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/5/28.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDContactUIButton: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    override func imageRectForContentRect(contentRect: CGRect) -> CGRect {
        return CGRectMake(10, 0, 58, 58)
    }
    override func titleRectForContentRect(contentRect: CGRect) -> CGRect {
        return CGRectMake(0, 58, 78, 20)
    }
    
    

}
