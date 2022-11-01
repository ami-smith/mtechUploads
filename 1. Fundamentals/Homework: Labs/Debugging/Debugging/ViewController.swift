//
//  ViewController.swift
//  Debugging
//
//  Created by Benjamin Patch on 8/29/22.
//

import UIKit

class ViewController: UIViewController {

    var onColor: UIColor = .white
    var offColor: UIColor = .black
    
    var lightIsOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        this won't compile...
    }
    
    @IBAction func flashlightButtonTapped(_ sender: UIButton) {
        if lightIsOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
    
}

