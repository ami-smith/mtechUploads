//
//  RyanTableViewCell.swift
//  Tech Social Media App
//
//  Created by Ami Smith on 11/2/22.
//

import UIKit

class RyanTableViewCell: UITableViewCell {

    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var postBodyTextView: UITextView!
    

    let dateFormatter: DateFormatter = {
            let df = DateFormatter()
            df.dateFormat = "MM/DD/YYYY"
            df.doesRelativeDateFormatting = true
            return df
        }()
    
    
    func update(with post: PostInfo) {
        usernameTextField.text = post.username
        postBodyTextView.text = post.postBody
        dateTextField.text = post.date
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
