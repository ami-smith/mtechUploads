//
//  CreatePostTableViewController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/10/23.
//

import UIKit

class CreatePostTableViewController: UITableViewController {
    
    var titleText = ""
    var bodyText = ""
    
//    this will exist when we edit a post. It will be nil if it's a new post
    
    var post: Post?
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var bodyTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let post {
            titleTextField.text = post.title
            bodyTextField.text = post.body
        }
        
        
        updateSavedState()
    }
    
    func updateSavedState() {
            guard let title = titleTextField.text, let body = bodyTextField.text else {
                return
            }
            
            if title.isEmpty || body.isEmpty {
                saveButton.isEnabled = false
            } else {
                saveButton.isEnabled = true
            }
    }
    
    
    @IBAction func titleChanged(_ sender: UITextField) {
        updateSavedState()
    }
    
    
    @IBAction func bodyChanged(_ sender: UITextField) {
        updateSavedState()
    }
    
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToProfile", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "unwindToProfile" else { return }
        
        titleText = titleTextField.text ?? ""
        bodyText = bodyTextField.text ?? ""
    }
}
