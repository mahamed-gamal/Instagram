//
//  TableViewCell.swift
//  Instagram
//
//  Created by Mohamed Gamal on 7/8/19.
//  Copyright © 2019 ME. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource  {

    @IBOutlet weak var collectionView: UICollectionView!
    var statusNames : [String] = ["profile 1 " ," profile 2 " ,"profile 3 " ,"profile 4 " ,"profile 5" ,"profile 6 ","profile 7 ","profile 8 " ]
    
        var images = [ UIImage(named: "ME"), UIImage(named: "cr4"), UIImage(named: "cr1"), UIImage(named: "cr2"), UIImage(named: "ME"), UIImage(named: "cr4") ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return statusNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        
        cell.img.image = self.images[indexPath.row]
        cell.lbl.text = statusNames[indexPath.row]
        return cell
    }

}
