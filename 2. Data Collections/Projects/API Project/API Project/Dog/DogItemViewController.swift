//
//  ViewController.swift
//  API Project
//
//  Created by Ami Smith on 12/7/22.
//

import UIKit


class DogItemViewController: UIViewController {
    
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var newDogButton: UIButton!
    
    let controller = DogItemController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dogImage.image = UIImage(systemName: "photo.on.rectangle")
        Task {
            do {
                let dogItem = try await controller.fetchDogItem()
                updateUI(with: dogItem)
            } catch {
                updateUI(with: error)
            }
        }
    }
    
    func updateUI(with dogItem: DogItem) {
        Task {
            do {
                let image = try await controller.fetchImage(from: dogItem.image)
                dogImage.image = image
            } catch {
                updateUI(with: error)
            }
        }
    }
    
    func updateUI(with error: Error) {
        title = "Error Fetching Photo"
        dogImage.image = UIImage(systemName: "exclamationmark.octagon")
    }
    
    @IBAction func newDogButtonPressed(_ sender: UIButton) {
        do {
            Task {
                do {
                    let dogItem = try await controller.fetchDogItem()
                    updateUI(with: dogItem)
                } catch {
                    updateUI(with: error)
                }
            }
        }
    }
}


