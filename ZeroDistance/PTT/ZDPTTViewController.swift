//
//  ZDPTTViewController.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/6/9.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDPTTViewController: UITableViewController {
    
    let groupName:[String] = ["对讲组01","对讲组02","对讲组03","对讲组04","对讲组05","对讲组06","对讲组07","对讲组08","对讲组09","a对讲组10"]
    let PTTimage:[String] = ["Group","Group","Group","Group","Group","Group","Group","Group","Group","Group"]
    let time:[String] = ["刚刚","8分钟前","1小时前","2天前","2天前","2天前","2天前","2天前","2天前","2天前"]
    

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
        return groupName.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PTTCell", forIndexPath: indexPath)

        cell.imageView?.image = UIImage(named: PTTimage[indexPath.row])
        cell.textLabel?.text = groupName[indexPath.row]
        cell.detailTextLabel?.text = time[indexPath.row]

        return cell
    }
    

   
}
