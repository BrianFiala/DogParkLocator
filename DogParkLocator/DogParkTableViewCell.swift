//
//  DogParkTableViewCell.swift
//  DogParkLocator
//
//  Created by Brian Fiala on 10/20/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class DogParkTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dogParkImage: UIImageView!
    @IBOutlet weak var dogParkName: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
