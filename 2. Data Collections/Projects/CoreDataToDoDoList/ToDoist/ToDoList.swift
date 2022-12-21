//
//  ToDoList.swift
//  ToDoist
//
//  Created by Ami Smith on 12/14/22.
//

import Foundation

extension ToDoList {
    var itemsArray: [Item] {
        let array = self.items?.allObjects as? [Item]
        return array ?? []
    }
}
