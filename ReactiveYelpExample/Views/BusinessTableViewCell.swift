//
//  BusinessTableViewCell.swift
//  ReactiveYelpExample
//
//  Created by Louis Basile on 3/10/18.
//  Copyright © 2018 Louis Basile. All rights reserved.
//

import UIKit

class BusinessTableViewCell: UITableViewCell {
    @IBOutlet weak var businessImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
