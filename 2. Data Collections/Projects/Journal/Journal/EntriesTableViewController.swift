//
//  EntriesTableViewController.swift
//  Journal
//
//  Created by Ami Smith on 10/31/22.
//

import UIKit

class EntriesTableViewController: UITableViewController {
    
    let journalEntries = JournalEntry.defaultEntries

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journalEntries.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentJournalEntry = journalEntries[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "journalEntryCell", for: indexPath)
        
        var config = cell.defaultContentConfiguration()
        config.text = currentJournalEntry.title
        
        cell.contentConfiguration = config
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: indexPath)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = sender as? IndexPath,  let detailViewController = segue.destination as? ViewController else {
            fatalError()
        }
        detailViewController.entry = journalEntries[indexPath.row]
    }
}
