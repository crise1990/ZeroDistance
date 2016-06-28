//
//  ZDChatViewController.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/6/9.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDChatViewController: UITableViewController {
    
    
    //示例数据
    let avatar:[String] = ["avatar01","avatar02","avatar03","avatar04","avatar05","avatar01","avatar02","avatar03","avatar04","avatar05"]
    let nickName:[String] = ["崔午阳","cuiwuyang","Jiske.T","avatar04","avatar05","avatar01","avatar02","avatar03","avatar04","avatar05"]
    let time:[String] = ["刚刚","18分钟前","1小时前","2天前","2天前","2天前","2天前","2天前","2天前","2天前"]
    let content:[String] = ["本周工作内容已上传，请李总查收...","eting at 4:598前8分钟前8","8分钟前8分钟前8分钟前Meeting","2天前","2天前","本周工作内容已上传，请李总查收","本周工作内容已上传，请李总查收","分钟前M前8分钟前8分钟ee前","钟前M前8分钟前8分钟前8","本周工作内容已上传，请李总查收"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70.0

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return avatar.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("chatCell", forIndexPath: indexPath) as! ZDChatContactCell
        
        cell.avatarImage.image = UIImage(named:avatar[indexPath.row])
        cell.nickName.text = nickName[indexPath.row]
        cell.chatBrief.text = content[indexPath.row]
        cell.timeLabel.text = time[indexPath.row]
        

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toChatContentVIew" {
            let destinationVc = segue.destinationViewController as! ChatContentViewController
//            let chatinfo  = chatsinfo[tableView.indexPathForSelectedRow!.row] as? ChatInfo
            destinationVc.title = nickName[tableView.indexPathForSelectedRow!.row]
            
        }
    }

    
}
