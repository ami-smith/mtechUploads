//
//  DisplayUserTableViewCell.swift
//  Interview Code Challenge 2
//
//  Created by Ami Smith on 2/28/23.
//

import UIKit

class DisplayUserTableViewCell: UITableViewCell {
    
    //Will always be displaying
    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    //should only display if toggled on
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var registeredLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var cellNumberLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nationalityLabel: UILabel!
    

    @IBOutlet weak var genderTitleLabel: UILabel!
    @IBOutlet weak var locationTitleLabel: UILabel!
    @IBOutlet weak var emailTitleLabel: UILabel!
    @IBOutlet weak var loginTitleLabel: UILabel!
    @IBOutlet weak var registeredTitleLabel: UILabel!
    @IBOutlet weak var dateOfBirthTitleLabel: UILabel!
    @IBOutlet weak var phoneNumberTitleLabel: UILabel!
    @IBOutlet weak var cellPhoneNumberTitleLabel: UILabel!
    @IBOutlet weak var idTitleLabel: UILabel!
    @IBOutlet weak var nationalityTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
