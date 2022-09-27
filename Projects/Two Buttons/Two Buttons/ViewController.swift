//
//  ViewController.swift
//  Two Buttons
//
//  Created by Ami Smith on 9/1/22.
//

import UIKit

class ViewController: UIViewController {
    
//    MARK: Properties and Outlets
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    
    //  MARK: Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//    MARK: Actions

    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        label.text = textField.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        textField.text = ""
        label.text = ""
    }
}

