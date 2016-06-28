//
//  ZDContactsViewController.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/5/28.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDContactsViewController: UITableViewController, UISearchBarDelegate, UISearchResultsUpdating, UISearchControllerDelegate {

    var searchController: UISearchController!
    var shouldShowSearchResults = false
 
    
    
    let avatarImageName = ["avatar01","avatar02","avatar03","avatar04","avatar08"]
    let userName = ["崔午阳","Lucy.M","Ivy.B","Jisake.T","项目讨论组"]
    
    var filteredName = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setHeadView()
        configureSearchController()
        


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if shouldShowSearchResults {
            return 1
        } else {
            return 2
        }
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if shouldShowSearchResults {
            return filteredName.count
            
        } else {
            if section == 0 {
                return 1
            } else {
                return avatarImageName.count
            }
            
        }
       
//        return avatarImageName.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if shouldShowSearchResults {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("ContatctsCell", forIndexPath: indexPath) as! ZDContactsCell
            
            // Configure the cell...
            cell.avatarImageView.image = UIImage(named: avatarImageName[indexPath.row])
            cell.userNameLabel.text = filteredName[indexPath.row]
            
            return cell
            
        } else {
            if indexPath.section == 0 {
                let cell = tableView.dequeueReusableCellWithIdentifier("HeadCell", forIndexPath: indexPath) as! ZDHeadCell
                
                
                return cell
                
                
            }else {
                
                let cell = tableView.dequeueReusableCellWithIdentifier("ContatctsCell", forIndexPath: indexPath) as! ZDContactsCell
                
                // Configure the cell...
                cell.avatarImageView.image = UIImage(named: avatarImageName[indexPath.row])
                cell.userNameLabel.text = userName[indexPath.row]
                
                return cell
                
            }
            
        }
        
        
        
        
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if shouldShowSearchResults {
            return 70.0
            
        } else {
            if indexPath.section == 0 {
                return 100.0
            }else {
                return 70.0
            }
            
        }
    }
    
//    // set headView
//    func setHeadView() {
//        // set headView
//        let margin: CGFloat = (UIScreen.mainScreen().bounds.width - 30 - 4 * buttonW) / 3
//        for i in 0..<4 {
//            let btn:ZDContactUIButton = ZDContactUIButton()
//            btn.frame = CGRectMake(CGFloat(i) * (buttonW + margin),0, buttonW, buttonH)
//            btn.setImage(UIImage(named: imageName[i]), forState: UIControlState.Normal)
//            btn.setTitle(titleName[i], forState: UIControlState.Normal)
////            btn.backgroundColor = UIColor.redColor()
//            btn.titleLabel?.font = UIFont.systemFontOfSize(12.0)
//            btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
//
//            btn.titleLabel?.textAlignment = NSTextAlignment.Center
//            btn.setBackgroundImage(UIImage(named: "Buttonbackimage"), forState: UIControlState.Highlighted)
//            btn.adjustsImageWhenHighlighted = false
//            headView.addSubview(btn)
//            
//        }
//        
    

    
//    }
    func configureSearchController() {
        // Initialize and perform a minimum configuration to the search controller.
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "搜索"
        searchController.searchBar.delegate = self
        searchController.searchBar.sizeToFit()
        tableView.tableHeaderView = searchController.searchBar
       
    }
    
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        //code
        print("updateSearchResultsForSearchController")
        let searchString = searchController.searchBar.text
        filteredName = userName.filter({ (name) -> Bool in
            let nameText:NSString = name
            return (nameText.rangeOfString(searchString!,options:NSStringCompareOptions.CaseInsensitiveSearch).location) != NSNotFound
        })
        tableView.reloadData()
        print(filteredName)
    }
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        shouldShowSearchResults = true
        tableView.reloadData()
    }
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        shouldShowSearchResults = false
        tableView.reloadData()
    }
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        if !shouldShowSearchResults {
            shouldShowSearchResults = true
            tableView.reloadData()
        }
        searchController.searchBar.resignFirstResponder()
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
