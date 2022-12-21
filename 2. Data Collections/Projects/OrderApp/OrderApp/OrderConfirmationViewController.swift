//
//  OrderConfirmationViewController.swift
//  OrderApp
//
//  Created by Ami Smith on 12/14/22.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    
    @IBOutlet weak var confirmationLabel: UILabel!
    
    
    let minutesToPrepare: Int
    
    
    init?(coder: NSCoder, minutesToPrepare: Int) {
        self.minutesToPrepare = minutesToPrepare
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmationLabel.text = "Thank you for your order! Your wait time is approximately \(minutesToPrepare) minutes."
        
        // Do any additional setup after loading the view.
    }
}
  
