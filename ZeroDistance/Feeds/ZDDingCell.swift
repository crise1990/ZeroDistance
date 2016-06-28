//
//  ZDDingCell.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/6/2.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ZDDingCell: UITableViewCell {
    
    let imageWH:CGFloat = 100.0
    let margin:CGFloat = 10.0
    
 
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var imagesView: UIView!
    @IBOutlet weak var imageHeightConstrains: NSLayoutConstraint!
    
    var images:[String]?{
        didSet{
            let imageCounts = (images?.count)!
            if(imageCounts > 0) {
                imageHeightConstrains.constant = (imageWH + margin) * CGFloat(((imageCounts-1) / 3) + 1)
                imagesView.subviews.forEach{ subview in
                    subview.removeFromSuperview()
                }
                for i in 0..<imageCounts {
                    let col:CGFloat = CGFloat(i % 3)
                    let row:CGFloat = CGFloat(i / 3)
                    let imageView = UIImageView(frame: CGRectMake(col * (imageWH + margin), row * (imageWH + margin), imageWH, imageWH))
                    
                    //mageView.backgroundColor = UIColor.blueColor()
                    imageView.image = UIImage(named: images![i])
                    imagesView.addSubview(imageView)
                    
                    
                }
                
            }else {
                
            }
            

            
        }
    }
    
    
    
    var content:String? {
        didSet{
            contentLabel.text = content
            
//            layoutIfNeeded()

        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        avatarImageView.layer.cornerRadius = avatarImageView.frame.width / 2.0
        avatarImageView.layer.masksToBounds = true
        contentLabel.numberOfLines = 0
        
    }

//    override func setSelected(selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        let picImageView:UIImageView = UIImageView()
//        let h = images.frame.origin.y
//        print(h)
//        picImageView.frame = CGRectMake(0, h, 100, 100)
//        picImageView.backgroundColor = UIColor.redColor()
//        layoutIfNeeded()
//        addSubview(picImageView)
//    }
    
//    override func layoutSubviews() {
////        var h:CGFloat = 0
//        
//        let h = contentLabel.frame.maxY
//        print(contentLabel.frame.size)
//        let picImageView:UIImageView = UIImageView()
//        picImageView.frame = CGRectMake(0, h, 100, 100)
//        picImageView.backgroundColor = UIColor.redColor()
//        layoutIfNeeded()
//        addSubview(picImageView)
//    }

}
