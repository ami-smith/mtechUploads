//
//  DeletePost.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/3/23.
//

import Foundation


struct CreatePost: Codable {
    var postid: Int
    var title: String
    var body: String
    var authorUserName: String
    var authorUserId: String
    var likes: Int
    var userLiked: Bool
    var numComments: Int
    var createdDate: String
    var comments: String
}

struct CreatePostResponse: Codable {
    let results: [CreatePost]
    
    
}

struct DeletePost: Codable {
    var userSecret: UUID
    var postid: Int

}
struct DeletePostRespose: Codable {
    let results: [DeletePost]
}


struct EditPost: Encodable, Decodable {
    var message: String
}
struct EditPostRespose: Codable {
    let results: [EditPost]
}
