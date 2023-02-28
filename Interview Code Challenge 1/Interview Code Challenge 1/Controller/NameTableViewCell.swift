//
//  UserTableViewCell.swift
//  Interview Code Challenge 1
//
//  Created by Ami Smith on 2/24/23.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
