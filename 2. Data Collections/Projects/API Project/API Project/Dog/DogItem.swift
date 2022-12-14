//
//  DogItem.swift
//  API Project
//
//  Created by Ami Smith on 12/7/22.
//

import Foundation

struct DogItem: Codable {
    var image: URL
    
    enum CodingKeys: String, CodingKey {
        case image = "message"
    }
    
}
