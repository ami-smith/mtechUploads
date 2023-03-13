//
//  DisplayUserTableViewController.swift
//  Interview Code Challenge 2
//
//  Created by Ami Smith on 2/28/23.
//

import UIKit

class DisplayUserTableViewController: UITableViewController {
    
    var randomUsers = [RandomUser]()
    var includedFields = [String]()
    var userAmount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         getInfo()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return randomUsers.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! DisplayUserTableViewCell
        let randomUser = randomUsers[indexPath.row]
        
        
        cell.nameLabel.text = "\(randomUser.name.title) \(randomUser.name.first) \(randomUser.name.last)"
        cell.userPhoto.image = UIImage(contentsOfFile: randomUser.picture.large)
        
        
        if let _ = randomUser.dob?.age {
            cell.dateOfBirthLabel.text = "DOB: \(String(randomUser.dob!.age))"
            //cell.dateOfBirthTitleLabel.text = "DOB:"
        }


        if let email = randomUser.email,!email.isEmpty {
            cell.emailLabel.text = randomUser.email
            cell.emailTitleLabel.text = "Email:"

        }
        
        if let gender = randomUser.gender,!gender.isEmpty {
            cell.genderLabel.text = randomUser.gender
            cell.genderTitleLabel.text = "Gender:"
        
        }



        if let login = randomUser.login?.password, !login.isEmpty {
            cell.loginLabel.text = randomUser.login!.password
            cell.loginTitleLabel.text = "Login:"
        }


        if let registered = randomUser.registered?.date, !registered.isEmpty {
            cell.registeredLabel.text = randomUser.registered?.date
            cell.registeredTitleLabel.text = "Registered:"
        }

        if let phone = randomUser.phone, !phone.isEmpty {
            cell.phoneNumberLabel.text = randomUser.phone
            cell.phoneNumberTitleLabel.text = "Phone:"
        }

        if let cells = randomUser.cell, !cells.isEmpty {
            cell.cellNumberLabel.text = randomUser.cell
            cell.cellPhoneNumberTitleLabel.text = "Cell:"
        }


        if let id = randomUser.id?.name, !id.isEmpty {
            cell.idLabel.text = randomUser.id?.name
            cell.idTitleLabel.text = "ID:"
        }


        if let nat = randomUser.nat, !nat.isEmpty {
            cell.nationalityLabel.text = randomUser.nat
            cell.nationalityTitleLabel.text = "Nat:"
        }
        
        
        if let city = randomUser.location?.city,
           let state = randomUser.location?.state,
           !city.isEmpty {
            cell.locationLabel.text = "\(city), \(state)"
            cell.locationTitleLabel.text = "Location:"
        }
        
        if let imageUrl = URL(string: randomUser.picture.large) {
              URLSession.shared.dataTask(with: imageUrl) { (data, response, error) in
                if let error = error {
                  print("Error loading image: \(error.localizedDescription)")
                } else if let data = data {
                  DispatchQueue.main.async {
                    let image = UIImage(data: data)
                    cell.userPhoto.image = image
                  }
                } else {
                    print("🤯 waaa?")
                }
              }.resume()
            }
        
        return cell
        
    }
    
    func getInfo () {
        Task {
                    do {
                        let userAPIController = RandomAPI.UserInfoController()
                        let result = try await userAPIController.fetchRandomUser(includedFields, numberOfUsers: userAmount)
                        randomUsers = result.results
                        tableView.reloadData()
                    } catch {
                        print(error)
                        fatalError()
            }
        }
    }
}

//extension String {
//    func nilIfEmpty: String? {
//        if isEmpty {
//            return nil
//        } else {
//            return self
//        }
//    }
//}
