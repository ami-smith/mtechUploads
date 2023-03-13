//
//  ViewController.swift
//  Interview Code Challenge 1
//
//  Created by Ami Smith on 2/24/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addUserButton: UIButton!
    @IBOutlet weak var nameTableView: UITableView!
    @IBOutlet weak var randomUserLabel: UILabel!
    
    
    var users = [User]()
    var savedText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTableView.delegate = self
        nameTableView.dataSource = self
    }
    
    @IBAction func addUserButtonTapped(_ sender: UIButton) {
        
        storeTextFieldNames()
       
    }
    
    @IBAction func generateRandomUserButtonTapped(_ sender: UIButton) {
        
        let randomItem = users.randomElement()
        
        randomUserLabel.text = randomItem?.user
        
    }
    
    func storeTextFieldNames() {
        var savingData = User(user: textField.text!)
        users.insert(savingData, at: 0)
        textField.text = ""
        nameTableView.reloadData()
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath) as! NameTableViewCell
        
        let nameData = users[indexPath.row]
        cell.textLabel?.text = nameData.user
        
        return cell
    }
    
}
