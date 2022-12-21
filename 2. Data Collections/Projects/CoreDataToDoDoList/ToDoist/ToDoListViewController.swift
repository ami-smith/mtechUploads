//
//  ToDoListViewController.swift
//  ToDoist
//
//  Created by Ami Smith on 12/15/22.
//

import UIKit

class ToDoListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let manager = ItemManager.shared
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "ToDoIst"
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    
    func list(at indexPath: IndexPath) -> ToDoList {
        manager.allLists()[indexPath.row]
    }
    
    @IBAction func createUiAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Create a new ToDoList", message: nil, preferredStyle: .alert)
        alert.addTextField { tf in
            tf.placeholder = "List name: Honey-Do, Chores, Projects, etc."
        }
        
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned alert] _ in
            guard let textField = alert.textFields?.first, let response = textField.text else { return }
            self.manager.createNewList(with: response)
            self.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(submitAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
        //        let alert = UIAlertController(title: "New list",message: nil, preferredStyle: UIAlertController.Style.alert)
        //        alert.addTextField() { list in list.placeholder = "Add a list item"}
        //
        //                // add the actions (buttons)
        //                alert.addAction(UIAlertAction(title: "Save", style: UIAlertAction.Style.default, handler: nil))
        //                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        //
        //                // show the alert
        //                self.present(alert, animated: true, completion: nil)
        //
    }
    
    @IBSegueAction func showItems(_ coder: NSCoder) -> ItemsViewController? {
        guard let indexPath = tableView.indexPathForSelectedRow else { return nil }
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedList = list(at: indexPath)
        return ItemsViewController(code: coder, list: selectedList)
    }
}
    
    extension ToDoListViewController {
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return manager.allLists().count
        }

        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ToDo", for: indexPath)
            let listAtRow = list(at: indexPath)
            cell.textLabel?.text = listAtRow.title
            cell.detailTextLabel?.text = "\(listAtRow.itemsArray.count) items"
            return cell
        }

        func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
        }

        // Override to support editing the table view.
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            guard editingStyle == .delete else { return }
            manager.deleteList(at: indexPath)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    

    
}

//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return manager.allLists().count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDo", for: indexPath)
//        let listAtRow = list(at: indexPath)
//        cell.textLabel?.text = listAtRow.title
//        cell.detailTextLabel?.text = "\(listAtRow.itemsArray.count) items"
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, editingStyleForRowAt indexPath: IndexPath) {
//        guard editingStyle == .delete else { return }
//        manager.deleteList(at: indexPath)
//        tableView.deleteRows(at: [indexPath], with: .fade)
//    }
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
    
