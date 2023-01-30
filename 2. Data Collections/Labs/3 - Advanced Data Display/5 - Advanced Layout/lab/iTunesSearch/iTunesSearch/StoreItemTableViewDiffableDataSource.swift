//
//  StoreItemTableViewDiffableDataSource.swift
//  iTunesSearch
//
//  Created by Ami Smith on 1/28/23.
//

import Foundation
import UIKit

@MainActor

class StoreItemTableViewDiffableDataSource: UITableViewDiffableDataSource<String, StoreItem> {
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return snapshot().sectionIdentifiers[section]
    }
}
