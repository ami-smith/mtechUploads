//
//  ToDoCell.swift
//  ToDoListProject
//
//  Created by Ami Smith on 11/10/22.
//

import UIKit

protocol ToDoCellDelegate: AnyObject {
    
    func checkmarkTapped(sender: ToDoCell)
    }

    class ToDoCell: UITableViewCell {
        weak var delegate: ToDoCellDelegate?
        
        @IBOutlet weak var isCompleteButton: UIButton!
        
        @IBOutlet weak var titleLabel: UILabel!
        
        override func awakeFromNib() {
            super.awakeFromNib()
        }
        
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
           
        }
        
        @IBAction func completeButtonTapped(_ sender: UIButton) {
            delegate?.checkmarkTapped(sender: self)
        }
        
    }

