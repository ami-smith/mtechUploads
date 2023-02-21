//
//  PostTableViewCell.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/3/23.
//

import UIKit

protocol PostTableViewCellDelegate: AnyObject {
    func postWasDeleted(cell: UITableViewCell)
    func postWasEdited(cell: UITableViewCell) 
}
    


class PostTableViewCell: UITableViewCell {
    
    weak var delegate: PostTableViewCellDelegate?
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var likesLabel: UIButton!
    @IBOutlet weak var dateCreatedLabel: UILabel!
    @IBOutlet weak var numOfCommentsLabel: UIButton!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
    @IBAction func likeButtonTapped(_ sender: Any) {
    }
    
    @IBAction func commentButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func editButtonTapped(_ sender: UIButton) {
        delegate?.postWasEdited(cell: self)
    }
    
    @IBAction func deleteButtonTapped(_ sender: UIButton) {
        delegate?.postWasDeleted(cell: self)
       
    }
}
    


