//
//  Comments:Likes.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/9/23.
//

import Foundation

struct Comment: Codable {
    var commentId: Int?
    var body: String?
    var userName: String?
    var userId: String?
    var createdDate: String
}

struct Like: Codable {
    var postId: Int?
    var title: String?
    var body: String?
    var authorUserName: String?
    var authorUserId: String?
    var likes: Int?
    var userLiked: Bool?
    var numComments: Int?
    var createdDate: String
    var comments: [String]?
}
