//
//  ProfileEditController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/13/23.
//

import Foundation

//grabbed from LikesController

class EditProfileController {

    enum EditProfileError: Error, LocalizedError {
        case itemsNotFound

    }
    static func editProfile(userSecret: UUID, userName: String, bio: String, techInterests: String) async throws -> Bool {
        // Initialize our session and request
        let session = URLSession.shared
        let urlComponents = URLComponents(string: "\(API.url)/updateProfile")!
        
        // Put the credentials in JSON format
        let profile = ["userName": userName, "bio": bio, "techInterests": techInterests]
        let postDictionary: [String: Any] = ["userSecret": userSecret.description, "profile": profile]
     
        var request = URLRequest(url: urlComponents.url!)
        // Add json data to the body of the request. Also clarify that this is a POST request
        request.httpBody = try JSONSerialization.data(withJSONObject: postDictionary, options: .prettyPrinted)
        request.httpMethod = "POST"//???????????????/
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")


        let (data, response) = try await session.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw EditProfileError.itemsNotFound
        }

        return true
    }
}
