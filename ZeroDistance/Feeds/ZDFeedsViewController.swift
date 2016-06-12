//
//  ZDFeedsViewController.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/6/1.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDFeedsViewController: UITableViewController {
    let dingStoryBoard:UIStoryboard! = UIStoryboard(name: "Ding", bundle: nil)


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vc:UITableViewController = dingStoryBoard.instantiateViewControllerWithIdentifier("DingTableView") as! UITableViewController
        navigationController?.pushViewController(vc, animated: true)
      
        
        
    }


}
