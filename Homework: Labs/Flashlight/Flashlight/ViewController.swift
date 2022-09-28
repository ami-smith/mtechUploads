//
//  ViewController.swift
//  Flashlight
//
//  Created by Ami Smith on 8/22/22.
//

import UIKit

class ViewController: UIViewController {
var isOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }

    @IBAction func flashlightButtonTapped(_ sender: UIButton) {
        isOn.toggle()
        
        if isOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
    }
    
}

}
