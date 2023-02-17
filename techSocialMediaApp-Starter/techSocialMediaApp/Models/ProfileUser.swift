//
//  ProfileUser.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/13/23.
//

import Foundation

struct ProfileUser: Codable {
    var firstName: String
    var lastName: String
    var userName: String
    var userUUID: UUID
    var bio: String
    var techInterests: String
    var posts: [Post] //??
 
}
