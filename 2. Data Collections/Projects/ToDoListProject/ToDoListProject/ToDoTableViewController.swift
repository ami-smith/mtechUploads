//
//  ToDoTableViewController.swift
//  ToDoListProject
//
//  Created by Ami Smith on 11/6/22.
//

import UIKit

class ToDoTableViewController: UITableViewController, ToDoCellDelegate {
    func checkmarkTapped(sender: ToDoCell) {
        if let indexPath = tableView.indexPath(for: sender) {
            var toDo = toDos[indexPath.row]
            toDo.isComplete.toggle()
            toDos[indexPath.row] = toDo
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    var toDos = [ToDo] ()
    var toDo: ToDo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let savedToDos = ToDo.loadToDos() {
            toDos = savedToDos
        } else {
            toDos = ToDo.loadToDos()
        }
        navigationItem.leftBarButtonItem = editButtonItem
        
    }
    
    
    
    // MARK: - Table view data source
    
    
    @IBAction func unwindToDoList(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind" else { return }
        let sourceViewController = segue.source as! ToDoDetailTableViewController
        
        let toDo = sourceViewController.toDo {
            if let indexOfExistingToDo = toDos.firstIndex(of: toDo) {
                toDos[indexOfExistingToDo] = toDo
                tableView.reloadRows(at: [IndexPath(row: indexOfExistingToDo, section: 0)], with: .automatic)
            } else {
                
            }; let newIndexPath = IndexPath(row: toDos.count, section: 0)
            toDos.append(toDo)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
            
        }
        
        ToDo.saveToDos(toDos)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCellIdentifier", for: indexPath) as! ToDoCell
        
        let toDo = toDos[indexPath.row]
        cell.titleLabel?.text = toDo.title
        cell.isCompleteButton.isSelected = toDo.isComplete
        cell.delegate = self
        
        
        return cell
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            toDos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            ToDo.saveToDos(toDos)
            
        }
        
        
        
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            super.prepare(for: segue, sender: sender)
            
            guard segue.identifier == "saveUnwind" else { return
            }
            
            let title = titleTextField.text!
            let isComplete = isCompleteButton.isSelected
            let dueDate = dueDatePicker.date
            let notes = notesTextView.text
            
            toDo = ToDo(title: title, isComplete: isComplete, dueDate: dueDate, notes: notes)
            
            if toDo != nil {
                toDo?.title = title
                toDo?.isComplete = isComplete
                toDo?.dueDate = dueDate
                toDo?.notes = notes
            } else {
                toDo = ToDo(title: title, isComplete: isComplete, dueDate: dueDate, notes: notes)
            }
        }
        
        
        
        
    }
    
}

