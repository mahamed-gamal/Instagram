//
//  SeconedCell.swift
//  Instagram
//
//  Created by Mohamed Gamal on 7/10/19.
//  Copyright © 2019 ME. All rights reserved.
//

import UIKit

class SeconedCell: UITableViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var seconedImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
