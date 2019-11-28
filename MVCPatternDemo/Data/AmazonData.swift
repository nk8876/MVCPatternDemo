//
//  AmazonData.swift
//  MVCPatternDemo
//
//  Created by Dheeraj Arora on 04/10/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import Foundation
import UIKit

class AmazonData{

    static func getAllAmazonData() -> [AmazonModel]{
        var arrData = [AmazonModel]()
        arrData = [
            AmazonModel(img: #imageLiteral(resourceName: "4"), titleStr: "Image 1"),
            AmazonModel(img:#imageLiteral(resourceName: "3") , titleStr: "Image 2"),
            AmazonModel(img: #imageLiteral(resourceName: "2"), titleStr: "Image 3"),
            AmazonModel(img: #imageLiteral(resourceName: "1"), titleStr: "Image 4")
        ]
    
        return arrData
    }
}
