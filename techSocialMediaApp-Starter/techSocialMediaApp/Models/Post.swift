//
//  GetPosts.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/2/23.
//

import Foundation

struct Post: Codable {
    var postid: Int?
    var title: String?
    var body: String?
    var authorUserName: String?
    var authorUserId: String?
    var likes: Int?
    var userLiked: Bool?
    var numComments: Int?
    var createdDate: String
    var comments: String?
    var message: String?
    var userSecret: String?
    var commentId: Int?
    var userName: String?
    var userId: String?
}
