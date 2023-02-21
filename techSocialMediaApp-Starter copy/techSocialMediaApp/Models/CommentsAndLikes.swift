//
//  CommentsAndLikes.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/3/23.
//

import Foundation

struct GetComments: Codable {
   
    var commentId: String
    var body: String
    var userName: String
    var userId: String
    var createdDate: String
    
}

struct GetCommentsResponse: Codable {
    let results: [GetComments]
}
