//
//  ViewController.swift
//  Unit 1 Light Project
//
//  Created by Ami Smith on 9/3/22.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = false
//    changed it from true to false, and then the app starts with light off. The book told us to start with true.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
        
    }
    
}

