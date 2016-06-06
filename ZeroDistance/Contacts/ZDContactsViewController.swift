//
//  ZDContactsViewController.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/5/28.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDContactsViewController: UITableViewController {

    @IBOutlet weak var headView: UIView!
    
    
    let buttonW: CGFloat = 78.0
    let buttonH: CGFloat = 78.0
    
    let imageName = ["contact1","contact2","contact3","contact4"]
    let titleName = ["手机通讯录","企业联系人","群组联系人","关注联系人"]
    
    
    let avatarImageName = ["avatar01","avatar02","avatar03","avatar04","avatar08"]
    let userName = ["崔午阳","Lucy.M","Ivy.B","Jisake.T","项目讨论组"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setHeadView()
        
        
        


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return avatarImageName.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ContactsCell", forIndexPath: indexPath) as! ZDContactsCell

        // Configure the cell...
        cell.avatarImageView.image = UIImage(named: avatarImageName[indexPath.row])
        cell.userNameLabel.text = userName[indexPath.row]

        return cell
    }
    
    // set headView
    func setHeadView() {
        // set headView
        let margin: CGFloat = (UIScreen.mainScreen().bounds.width - 30 - 4 * buttonW) / 3
        for i in 0..<4 {
            let btn:ZDContactUIButton = ZDContactUIButton()
            btn.frame = CGRectMake(CGFloat(i) * (buttonW + margin),0, buttonW, buttonH)
            btn.setImage(UIImage(named: imageName[i]), forState: UIControlState.Normal)
            btn.setTitle(titleName[i], forState: UIControlState.Normal)
//            btn.backgroundColor = UIColor.redColor()
            btn.titleLabel?.font = UIFont.systemFontOfSize(12.0)
            btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)

            btn.titleLabel?.textAlignment = NSTextAlignment.Center
            btn.setBackgroundImage(UIImage(named: "Buttonbackimage"), forState: UIControlState.Highlighted)
            btn.adjustsImageWhenHighlighted = false
            headView.addSubview(btn)
            
        }
        
        

    
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
