//
//  ProfileViewController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/13/23.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PostTableViewCellDelegate {
    func postWasEdited(cell: UITableViewCell) {
        Task {
            do {
                let indexPath = postTableView.indexPath(for: cell)
                let post = posts[indexPath!.row]
                try await PostController.fetchItemsDeletePost(userSecret: User.current!.secret, postid: post.postid!)
            } catch {
                print(error)
            }
        }
    }
    
    func postWasDeleted(cell: UITableViewCell) {
        Task {
            do {
                let indexPath = postTableView.indexPath(for: cell)
                let post = posts[indexPath!.row]
                try await PostController.fetchItemsDeletePost(userSecret: User.current!.secret, postid: post.postid!)
            } catch {
                print(error)
            }
        }
    }
    
    func editButtonWasTapped(cell: UITableViewCell) {
        Task {
            do {
                let indexPath = postTableView.indexPath(for: cell)
                let post = posts[indexPath!.row]
                try await PostController.fetchItemsEditPost(userSecret: User.current!.secret, postid: post.postid!, title: title!, body: post.body!)
            } catch {
                print(error)
            }
        }
    }
    
    var posts = [Post]()
    
    @IBOutlet weak var techInterestsLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var bioLabel: UILabel!
    
    @IBOutlet weak var imageAmi: UIImageView!
    
    @IBOutlet weak var postTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.grabPosts()
        
        self.postTableView.delegate = self
        self.postTableView.dataSource = self
        
        imageAmi.layer.borderWidth = 2
        imageAmi.layer.masksToBounds = false
        imageAmi.layer.borderColor = CGColor(red: 253, green: 240, blue: 246, alpha: 1.00)
        imageAmi.layer.cornerRadius = imageAmi.frame.height/2
        imageAmi.clipsToBounds = true
        
        //        self.tabBarController?.delegate = self
        
        profileInfo()
        
    }
    
    func profileInfo() {
        Task {
            do {
                let profileResponse = try await ProfileInfoController.getUserProfile(userUUID: (User.current?.userUUID)!, userSecret: User.current!.secret)
                
                posts = (profileResponse)
                
                postTableView.reloadData()
                //                userNameLabel.text = "@\(profileUser[0].userName)"
                //                nameLabel.text = profileUser[0].firstName
                //
                //                techInterestsLabel.text = profileUser[0].techInterests
                //                bioLabel.text = profileUser[0].bio
                
                
            } catch {
                print("error")
            }
            
        }
        
    }
    
    
    
    @IBAction func createPostButtonPressed(_ sender: Any) {
        profileInfo()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return posts.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
            
            
            let singlePost = posts[indexPath.row]
            
            cell.usernameLabel.text = singlePost.authorUserName
            cell.titleLabel.text = singlePost.title
            cell.bodyLabel.text = singlePost.body
            cell.dateCreatedLabel.text = singlePost.createdDate
            cell.numOfCommentsLabel.titleLabel?.text = String(singlePost.numComments ?? 0)
            cell.likesLabel.titleLabel?.text = String(singlePost.likes ?? 0)
            
            cell.delegate = self
            
            return cell
        }
    
    func grabPosts() {
        Task {
            do {
                let newPost = try await PostController.fetchItemsGetMyPost()
                posts = newPost
                postTableView.reloadData()
            } catch {
                print(error)
            }
        }
    }
    
    func createMyPost(title: String, body: String) {
        
        Task {
            do {
                print("title \(title)")
                try await PostController.createPost(title: title, body: body)
                print("title \(title)")
                grabPosts()
            } catch {
                print (error)
            }
        }
    }
    
//    override var isEditing: Bool
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////        in this function, we need to clarify that we are editing, and we also need to pass in the title, body, and postID
//        
//        if isEditing == true {
//            let
//        }
//        
//    }
    
    func editPostFunction(post: Post, title: String, body: String) {
        Task {
            do {
                try await PostController.fetchItemsEditPost(postid: post.postid!, title: title, body: body)
                grabPosts()
            } catch {
                print (error)
            }
        }
    }
    
    
    
    @IBAction func unwindToProfile(_ unwindSegue: UIStoryboardSegue) {
        
        guard let sourceViewController = unwindSegue.source as? CreatePostTableViewController else { return }
        
        let titleText = sourceViewController.titleText
        let bodyText = sourceViewController.bodyText
        
        if let post = sourceViewController.post {
            editPostFunction(post: post, title: titleText, body: bodyText)
            
        } else {
            
            
            // Use data from the view controller which initiated the unwind segue
            createMyPost(title: titleText, body: bodyText)
        }
    }
}

