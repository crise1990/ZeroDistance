//
//  ChatContentViewController.swift
//  YepIM
//
//  Created by zhangkuo on 16/5/16.
//  Copyright © 2016年 zhangkuo. All rights reserved.
//

import UIKit

class ChatContentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   
    @IBOutlet weak var messageTextField: UITextField!
    
    lazy var chats: NSMutableArray = {
        let dictArray = NSArray(contentsOfFile: NSBundle.mainBundle().pathForResource("messages", ofType: "plist")!)
        let chatArray1:NSMutableArray = NSMutableArray(capacity: dictArray!.count)
        var lastChat:ChatContent?
        
        for dict in dictArray! {
            let chat:ChatContent = ChatContent(dict: dict as! [String : AnyObject])
            chat.ishideTime = chat.time == lastChat?.time
            chatArray1.addObject(chat)
            lastChat = chat
        }
        return chatArray1
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets=false
        let leftView = UIView()
        leftView.frame = CGRectMake(0, 0, 10, 0)
        messageTextField.leftView = leftView
        messageTextField.leftViewMode = UITextFieldViewMode.Always
     
 
        let btn = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: nil, action: nil)
        navigationItem.rightBarButtonItem = btn
        //
        
        
    }
    


    // MARK UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chats.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let chat: ChatContent = chats[indexPath.row] as! ChatContent

        let ID:String = (chat.type == 0) ? "meCell" : "othersCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(ID) as! ChatContentCell
        cell.chatContent = chat
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let chat = chats[indexPath.row] as! ChatContent
        return chat.cellHeight!
        
    }
   
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
