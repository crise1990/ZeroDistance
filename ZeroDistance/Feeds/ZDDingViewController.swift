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
        self.title = "提醒事项"
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
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
