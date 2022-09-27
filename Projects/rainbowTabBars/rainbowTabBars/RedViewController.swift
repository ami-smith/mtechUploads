//
//  ViewController.swift
//  rainbowTabBars
//
//  Created by Ami Smith on 9/16/22.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tabBarItem.badgeValue = "Alert"
        tabBarItem.badgeColor = .blue
    }


}

