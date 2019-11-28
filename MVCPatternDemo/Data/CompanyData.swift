//
//  CompanyData.swift
//  MVCPatternDemo
//
//  Created by Dheeraj Arora on 07/10/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import Foundation
import UIKit

class CompanyData {
    static func getAllCompanyData() -> [CompanyModel]{
        var arrData = [CompanyModel]()
        arrData = [
            CompanyModel(brandName: "APPLE", modelName: ["iPhone 5s","iPhone 6","iPhone 6s", "iPhone 7+", "iPhone 8", "iPhone 8+", "iPhone 11", "iPhone 11 Pro"]),CompanyModel(brandName: "SAMSUNG", modelName: ["Samsung M Series", "Samsung Galaxy Note 9", "Samsung Galaxy Note 9+", "Samsung Galaxy Note 10", "Samsung Galaxy Note 10 +"]),CompanyModel(brandName: "Mi", modelName: ["Mi Note 7", "Mi Note 7 Pro", "Mi K20"]),CompanyModel(brandName: "HUAWEI", modelName: ["Huawei Mate 20", "Huawei P30 Pro", "Huawei P10 Plus", "Huawei P20"])
        ]
        return arrData
    }
}
