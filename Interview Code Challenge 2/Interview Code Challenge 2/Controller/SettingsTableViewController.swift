//
//  SettingsTableViewController.swift
//  Interview Code Challenge 2
//
//  Created by Ami Smith on 2/28/23.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    var inclusionParameters = [String]()
    //   var userAmount = 1
    
    
    @IBOutlet weak var genderSwitch: UISwitch!
    @IBOutlet weak var locationSwitch: UISwitch!
    @IBOutlet weak var emailSwitch: UISwitch!
    @IBOutlet weak var loginSwitch: UISwitch!
    @IBOutlet weak var registeredSwitch: UISwitch!
    @IBOutlet weak var dateOfBirthSwitch: UISwitch!
    @IBOutlet weak var phoneNumberSwitch: UISwitch!
    @IBOutlet weak var cellPhoneNumberSwitch: UISwitch!
    @IBOutlet weak var idSwitch: UISwitch!
    @IBOutlet weak var nationalitySwitch: UISwitch!
    
    
    @IBOutlet weak var numberOfUsersStepper: UIStepper!
    @IBOutlet weak var numberOfUsersLabel: UILabel!
    
    var displayGender: Bool = false
    var displayLocation: Bool = false
    var displayEmail: Bool = false
    var displayLogin: Bool = false
    var displayRegistered: Bool = false
    var displayDateOfBirth: Bool = false
    var displayPhoneNumber: Bool = false
    var displayCellPhoneNumber: Bool = false
    var displayID: Bool = false
    var displayNationality: Bool = false
    
    
//      let settings = UserSettings.shared
//     let includedFields = settings.includedFields.joined(separator: ",")
//    
//     UserSettings.shared.numberOfResults =  Int(numberOfUsersLabel.text!) ?? 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        numberOfUsersStepper.value = 1
//        numberOfUsersLabel.text = "1"
        
        //**** When I add this to the view did load, the picture stops displaying***
        
    }
    
    // MARK: - Table view data source
    
    // MARK: - Navigation
    
    @IBAction func togglePressed(_ sender: UISwitch) {
        var includedFields: String
        switch sender {
        case genderSwitch:
            includedFields = "gender"
            
        case emailSwitch:
            includedFields = "email"
            
        case locationSwitch:
            includedFields = "location"
            
        case loginSwitch:
            includedFields = "login"
            
        case registeredSwitch:
            includedFields = "registered"
            
        case dateOfBirthSwitch:
            includedFields = "dob"
            
        case phoneNumberSwitch:
            includedFields = "phone"
            
        case cellPhoneNumberSwitch:
            includedFields = "cell"
            
        case idSwitch:
            includedFields = "id"
            
        case nationalitySwitch:
            includedFields = "nat"
        default:
            includedFields = ""
            break
        }
        
        if sender.isOn {
            inclusionParameters.append(includedFields)
        } else {
            inclusionParameters.removeAll { value in
                value == includedFields
            }
        }
    }
    
    
    @IBAction func generateRandomUserButtonPressed(_ sender: UIButton) {
        
        
    }
    
    // This function will increase or decrease the stepper
    var stepper = 0
    
    @IBAction func numberOfUsersStepperPressed(_ sender: UIStepper) {
        
        numberOfUsersLabel.text = "\(Int(sender.value))"
        stepper = (Int(sender.value))
        
//        if sender.value > Double(stepper) {
//            stepper += 1
//            numberOfUsersLabel.text = "\(stepper)"
//        } else if sender.value < Double(stepper) {
//            stepper -= 1
//            numberOfUsersLabel.text = "\(stepper)"
//        }
//
//        numberOfUsersLabel.text = "\(stepper)"
//
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tableviewSegue" {
            if let destinationVC = segue.destination as? DisplayUserTableViewController {
                destinationVC.includedFields = inclusionParameters
                destinationVC.userAmount = stepper
            }
        }
    }
    
}

