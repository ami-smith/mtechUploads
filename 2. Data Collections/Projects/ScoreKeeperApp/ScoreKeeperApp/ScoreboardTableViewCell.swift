//
//  ScoreboardTableViewCell.swift
//  ScoreKeeperApp
//
//  Created by Ami Smith on 11/8/22.
//

import UIKit

class ScoreboardTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var scoreStepper: UIStepper!
    
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
       updateScore()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func update(with player: Players) {
       playerLabel.text = player.name
        playerScoreLabel.text = String(player.currentScore)
        scoreStepper.value = Double(player.currentScore)
     }

    func updateScore() {
        playerScoreLabel.text = "\(Int(scoreStepper.value))"
    }
    
    
    
    @IBAction func stepperButtonTapped(_ sender: UIStepper) {
    updateScore()

        
        
        
    }
    
}
