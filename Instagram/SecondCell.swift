//
//  SecondCell.swift
//  Instagram
//
//  Created by Mohamed Gamal on 7/13/19.
//  Copyright © 2019 ME. All rights reserved.
//

import UIKit

class SecondCell: UITableViewCell {

    @IBOutlet weak var bigImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var smallImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
