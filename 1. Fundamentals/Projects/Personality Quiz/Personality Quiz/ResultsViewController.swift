//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Ami Smith on 10/3/22.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultDefinition: UILabel!
    
    var responses: [Answer]
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResult () {
        let frequencyOfAnswers = responses.reduce(into: [AnimalType: Int]()) {
            (counts, answer) in
            if let existingCount = counts [answer.type] {
                counts[answer.type] = existingCount + 1
            } else {
                counts[answer.type] = 1
            }
        }
            
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
            
        resultLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinition.text = mostCommonAnswer.definition
        }
    
    
    
    
}

                                                              
                                                              
