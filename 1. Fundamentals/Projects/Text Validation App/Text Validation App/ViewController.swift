//
//  ViewController.swift
//  Text Validation App
//
//  Created by Ami Smith on 10/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var usernameInput: UITextField!
    @IBOutlet var passwordInput: UITextField!
    @IBOutlet var loginButton: UIButton!
    var username: String = " "
    var password: String = " "
    
    @IBAction func passwordAction(_ sender: UITextField) {
    }
    @IBAction func loginButtonPushed(_ sender: UIButton) {
        
        var message = ""
        
        if isValidPassword(passwordInput.text ?? "")   {
            message = "Successfully Entered Password"
            performSegue(withIdentifier: "welcomePage", sender: nil)
            
        } else {
            message = "Incorrect Password, try again!"
        }

        let alert = UIAlertController(title: "Result", message: message, preferredStyle: .alert)
        let okayButton = UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil)

        let resetButton = UIAlertAction(title: NSLocalizedString("Reset", comment: "Default action"), style: .destructive, handler: { _ in
            self.passwordInput.text = ""
        })
        
        alert.addAction(okayButton)
        alert.addAction(resetButton)

        self.present(alert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title =
//    }
    
    func isValidPassword(_ password: String) -> Bool {
            let symbols = "~`!@#$%^&*-_=+?<>."
            var hasSymbol = false
            
            for character in password {
                hasSymbol = symbols.contains(character)
                if hasSymbol { break }
            }
            
            return password.count >= 8 && hasSymbol
        }
    }


