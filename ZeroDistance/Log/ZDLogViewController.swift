//
//  ZDLogViewController.swift
//  ZeroDistance
//
//  Created by mac on 16/7/3.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDLogViewController: UIViewController {
    
    let logStoryBoard:UIStoryboard! = UIStoryboard(name: "Main", bundle: nil)
    
    @IBOutlet weak var logAvatar: UIImageView!
    @IBOutlet weak var logNum: UITextField!
    @IBOutlet weak var logCode: UITextField!
    @IBOutlet weak var logBtn: UIButton!
    @IBOutlet weak var regBtn: UIButton!
    
    @IBAction func logIn(sender: AnyObject) {
        
        let tabViewController = logStoryBoard.instantiateViewControllerWithIdentifier("MainTab") as! UITabBarController
        self.presentViewController(tabViewController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        logNum.text = "1333333333"
        logCode.text = "******"
        logAvatar.image = UIImage(named: "avatar08")
        logBtn.layer.cornerRadius = 10
        super.viewDidLoad()
    }
    

}
