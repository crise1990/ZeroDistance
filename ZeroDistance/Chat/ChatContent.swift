//
//  ChatContent.swift
//  YepIM
//
//  Created by zhangkuo on 16/5/17.
//  Copyright © 2016年 zhangkuo. All rights reserved.
//

import UIKit


class ChatContent: NSObject {
    
    //var avatarImage: String!
    var text: String!
    var time: String!
    var type: NSNumber!
    
    var cellHeight:CGFloat?
    var ishideTime:Bool!
    
    
    init(dict:[String: AnyObject]) {
        super.init()
        setValuesForKeysWithDictionary(dict)
    }
    

}
