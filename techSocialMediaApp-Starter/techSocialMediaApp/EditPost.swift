//
//  EditPost.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/3/23.
//

import Foundation


struct EditPost: Codable {
    var userSecret: UUID
    var post: {
        var postId: Int
        var title: String
        var body: String
    }

}
struct EditPostRespose: Codable {
    let results: [EditPost]
}
