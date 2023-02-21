//
//  ProfileInfoController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/14/23.
//

import Foundation

class ProfileInfoController {

    enum EditProfileError: Error, LocalizedError {
        case itemsNotFound

    }
    static func getUserProfile(userUUID: UUID, userSecret: UUID) async throws -> [Post] {
        // Initialize our session and request
        let session = URLSession.shared
        var urlComponents = URLComponents(string: "\(API.url)/userPosts")!
        
        // Put the credentials in JSON format
        urlComponents.queryItems = [URLQueryItem(name: "userSecret", value: userSecret.uuidString), URLQueryItem(name: "userUUID", value: userUUID.uuidString)]
        var request = URLRequest(url: urlComponents.url!)
        // Add json data to the body of the request. Also clarify that this is a POST request
//        request.httpBody = try JSONSerialization.data(withJSONObject: postDictionary, options: .prettyPrinted)
//        request.httpMethod = "POST"//???????????????/
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")


        let (data, response) = try await session.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw EditProfileError.itemsNotFound
        }

        let decoder = JSONDecoder()
        let profile = try decoder.decode([Post].self, from: data)
        
        return profile
    }
}
