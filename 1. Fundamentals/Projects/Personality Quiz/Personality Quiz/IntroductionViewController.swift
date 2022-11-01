//
//  ViewController.swift
//  Personality Quiz
//
//  Created by Ami Smith on 10/3/22.
//

import UIKit

class IntroductionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startQuizPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "startQuiz", sender: nil)
    }
    
}
