//
//  ZDDingViewController.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/6/2.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDDingViewController: UITableViewController {
    
    @IBOutlet var dingTabelView: UITableView!
    
    
    let avatar:[String] = ["avatar01","avatar02","avatar03","avatar04","avatar05","avatar01","avatar02","avatar03","avatar04","avatar05"]
    let nickName:[String] = ["崔午阳","cuiwuyang","avatar03","avatar04","avatar05","avatar01","avatar02","avatar03","avatar04","avatar05"]
    let time:[String] = ["18分钟前","c18分钟前","1小时前","2天前","2天前","2天前","2天前","2天前","2天前","2天前"]
    let content:[String] = ["eting at 4:M","eting at 4:598前8分钟前8分钟前8分钟前Meeting at 4:598分钟前8分钟前8分钟前8分钟前Meeting at 4:598分钟前8分钟前8分钟前8分钟前Meeting at 4:598分钟前8分钟前8分钟前8分钟前M前8分钟前8分钟前8分钟前Meeting at 4:598分钟前8分钟前8分钟前8分钟前Meeting at 4:598分钟前8分钟前8分钟前8分钟前Meeting at 4:598分钟前8分钟前8分钟前8分钟前M","8分钟前8分钟前8分钟前Meeting at 4:598分钟前8分","8分钟前8分钟前8分钟前Meeting at 4:598分钟前8分","2天前","2天前","2天:598分钟前8分钟前8分钟前8分钟前M前8分钟前8分钟前8分钟前Mee前","2天:598分钟前8分钟前8分钟前8分钟前M前8分钟前8分钟前8分钟前Mee前","2:598分钟前8分钟前8分钟前8分钟前M前8分钟前8分钟前8分钟前Mee前","2天:598分钟前8分钟前8分钟前8分钟前M前8分钟前8分钟前8分钟前Mee前"]
    let images = [["pic01",],
                  ["chatavatar02","chatavatar03",],
                  ["pic02","chatavatar03","chatavatar04","chatavatar05"],
                  ["chatavatar02","chatavatar03","chatavatar04"],
                  ["pic04","chatavatar03","pic03","chatavatar05","chatavatar06"],
                  ["chatavatar02","chatavatar03","chatavatar04","chatavatar05","chatavatar06","chatavatar07"],
                  ["chatavatar02","chatavatar03","chatavatar04","chatavatar05","chatavatar06","chatavatar07","chatavatar07"],
                  ["chatavatar02","chatavatar03","chatavatar04","chatavatar05","chatavatar06","chatavatar07","chatavatar07","chatavatar07"],
                  ["chatavatar02","chatavatar03","chatavatar04","chatavatar05","chatavatar06","chatavatar07","chatavatar07","chatavatar07","chatavatar07"],
                  ["chatavatar02","chatavatar03","chatavatar04","chatavatar05","chatavatar06","chatavatar07"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        dingTabelView.estimatedRowHeight = 50.0
        dingTabelView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorInset = UIEdgeInsetsMake(10,0, 10, 0);
        
//        initial NavigationBar
        self.title = "提醒事项"
        let barButtonItem = UIBarButtonItem(title: "添加", style: UIBarButtonItemStyle.Plain, target: self, action: "tapBarButton")
        self.navigationItem.rightBarButtonItem = barButtonItem
        self.navigationController?.view.backgroundColor = UIColor.whiteColor()
        
//        self.navigationItem.setHidesBackButton(true, animated: true)
//        setTranslatesAutoresizingMaskIntoConstraints
//        self.setTranslatesAutoresizingMaskIntoConstraints = false
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

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DingCell", forIndexPath: indexPath) as! ZDDingCell
        
        cell.avatarImageView.image = UIImage(named: avatar[indexPath.row])
        cell.nickNameLabel.text = nickName[indexPath.row]
        cell.timeLabel.text = time[indexPath.row]
        cell.content = content[indexPath.row]
        cell.images = images[indexPath.row]

        return cell
    }
    

}
