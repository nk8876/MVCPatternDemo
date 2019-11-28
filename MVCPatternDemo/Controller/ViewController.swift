//
//  ViewController.swift
//  MVCPatternDemo
//
//  Created by Dheeraj Arora on 04/10/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrData = [AmazonModel]()
    
    @IBOutlet weak var collection: UICollectionView!
    var screenSize: CGRect!
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenSize = UIScreen.main.bounds
        screenWidth = screenSize.width
        screenHeight = screenSize.height
        
        arrData = AmazonData.getAllAmazonData()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        layout.itemSize = CGSize(width: screenWidth/2, height: screenHeight/2)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        collection!.collectionViewLayout = layout
    }

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AmazonCell", for: indexPath) as! AmazonCell
        cell.arrCellData = arrData[indexPath.row]
        return cell
    }
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let next = self.storyboard!.instantiateViewController(withIdentifier: "TableViewMultipleSection") as! TableViewMultipleSection
        self.navigationController?.pushViewController(next, animated: true)
    }
}
