//
//  AmazonCell.swift
//  MVCPatternDemo
//
//  Created by Dheeraj Arora on 04/10/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class AmazonCell: UICollectionViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleStr: UILabel!
    var arrCellData:AmazonModel?{
        didSet{
            img.image = arrCellData?.img
            titleStr.text = arrCellData?.titleStr
        }
    }
}
