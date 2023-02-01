//
//  EOLHierarchy.swift
//  Life-FormSearch
//
//  Created by Ami Smith on 1/31/23.
//

import Foundation

struct Ancestor: Codable {
    var scientificName: String
    var taxonRank: String?
}

struct EOLHierarchy: Codable {
    var ancestors: [Ancestor]?
}
