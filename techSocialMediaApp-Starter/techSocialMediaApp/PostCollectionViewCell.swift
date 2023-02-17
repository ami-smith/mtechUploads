//
//  PostCollectionViewCell.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/3/23.
//

import UIKit

class PostCollectionViewCell: UICollectionViewCell {
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func update(with post: GetPosts) {
        symbolLabel.text = post.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
}
