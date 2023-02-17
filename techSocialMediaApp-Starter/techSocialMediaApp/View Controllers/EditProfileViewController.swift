//
//  EditProfileViewController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/13/23.
//
import UIKit

class EditProfileViewController: UIViewController {
    
    
    @IBOutlet weak var EditBioTextField: UITextField!
    

    @IBOutlet weak var EditTechInterestTextField: UITextField!
    
    
    @IBOutlet weak var EditUserNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func editProfileInfo() {
        guard let bio = EditBioTextField.text, let techInterests = EditTechInterestTextField.text, let editUserName = EditUserNameTextField.text else { return }
        
        Task {
            do {
                try await EditProfileController.editProfile(userSecret: User.current!.secret, userName: editUserName, bio: bio, techInterests: techInterests)
            } catch {
                print ("broken")
            print(error)
                
            }
        }
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func EditProfileSaveButtonTapped(_ sender: UIButton) {
        editProfileInfo()
        self.dismiss(animated: true)
    }
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


