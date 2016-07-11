//
//  ProfileViewController.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/5/28.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDProfileViewController: UITableViewController{

    let imageH:CGFloat = 265.0
    var avatarImageView:UIImageView?
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userPosition: UILabel!
    @IBOutlet weak var numberOfFollow: UILabel!
    @IBOutlet weak var numberOfFollowers: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var emailAddress: UILabel!
    @IBOutlet weak var statusInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func setUp() {
        
        //navigation bar set
        navigationController!.navigationBar.translucent = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        automaticallyAdjustsScrollViewInsets = false
        // avatar image set
        tableView.contentInset = UIEdgeInsetsMake(imageH, 0, 0, 0)
        avatarImageView = UIImageView(frame: CGRectMake(0, -imageH, UIScreen.mainScreen().bounds.size.width, imageH))
        avatarImageView!.image = UIImage(named: "Bitmap")
        avatarImageView!.contentMode = UIViewContentMode.ScaleAspectFill
        tableView.insertSubview(avatarImageView!, atIndex: 0)
        //info set
        
        userName.text = "Dr.Lee"
        userPosition.text = "产品经理"
        numberOfFollow.text = "10"
        numberOfFollowers.text = "88"
        phoneNumber.text = "1888888888"
        emailAddress.text = "lingju.gmail.com"
        statusInfo.text = "出差一周，请悉知。"
        
        tableView.tableFooterView = UIView()
        
    }
    
    //MARK: - UIScrollVIewDelegate
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        if offsetY < -imageH{
            var scale: CGFloat = 1 - ((offsetY + imageH) / 130)
            scale = (scale >= 1) ? scale : 1;
            avatarImageView?.transform = CGAffineTransformMakeScale(scale, scale)
        }
    
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 1000
//    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
