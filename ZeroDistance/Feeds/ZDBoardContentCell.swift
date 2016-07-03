//
//  ZDBoardContentCell.swift
//  ZeroDistance
//
//  Created by mac on 16/6/29.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

struct boardContent{
    let boardText: String
    let boardImage: String
    
}

class ZDBoardContentCell: UITableViewCell {
    

    @IBOutlet weak var boardContentImage: UIImageView!
    @IBOutlet weak var boardLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
