//
//  ViewController.swift
//  TallyApp
//
//  Created by Ami Smith on 9/29/22.
//

import UIKit

class ViewController: UIViewController {
var intervalAmount = ""

    @IBOutlet var tallyButton: UIButton!
//    @IBOutlet var numberInput: UITextField!
    @IBOutlet var tallyResult: UILabel!
    
    @IBOutlet var tallySlider: UISlider!
    
    var value = 0
    
    struct Settings {
        var name = ""
        var startingNumber = 1
        var counter = 0
    }
    var myTally = Settings()
    
    var tally = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        value = myTally.startingNumber
        updateTally()
    }

    func updateTally() {
        tallyResult.text = "\(value)"
    }
    
    
    
    @IBAction func tallyButtonPressed(_ sender: UIButton) {
        value += myTally.counter
        updateTally()
        }

//    @IBAction func numberInputAction(_ sender: UITextField) {
//
//        guard numberInput.text != nil else {return}
//        guard Int(numberInput.text!) != nil else {return}
        
//        myTally.counter = Int(numberInput.text!)!
//    }
    
    @IBAction func tallyDidSlide(_ sender: UISlider) {
        myTally.counter = Int(sender.value)
    }
}


