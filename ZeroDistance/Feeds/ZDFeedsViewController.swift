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
//    let boardListStoryBoard:UIStoryboard! = UIStoryboard(name: "Board", bundle: nil)


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
        switch indexPath.section{
        case 0:
            switch indexPath.row {
            case 0:
                let vc:UITableViewController = dingStoryBoard.instantiateViewControllerWithIdentifier("DingTableView") as! UITableViewController
                navigationController?.pushViewController(vc, animated: true)
            case 1:
                let vc:UITableViewController = dingStoryBoard.instantiateViewControllerWithIdentifier("BoardListView") as! UITableViewController
                navigationController?.pushViewController(vc, animated: true)

            default:
                break
            }
        case 1:
            switch indexPath.row {
            case 0:
                let vc:UITableViewController = dingStoryBoard.instantiateViewControllerWithIdentifier("MomentsViewController") as! UITableViewController
                navigationController?.pushViewController(vc, animated: true)
            default:
                break
            }
            
            
        default:
            break
        }
      
        
        
    }


}
