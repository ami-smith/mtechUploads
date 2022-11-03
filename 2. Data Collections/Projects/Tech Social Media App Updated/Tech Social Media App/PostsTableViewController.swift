//
//  PostsTableViewController.swift
//  Tech Social Media App
//
//  Created by Ami Smith on 11/2/22.
//

import UIKit

class PostsTableViewController: UITableViewController {

override func viewDidLoad() {
    super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PostInfo.allPosts.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = PostInfo.allPosts[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! RyanTableViewCell

        cell.update(with: post)
        return cell
    }

    
}
