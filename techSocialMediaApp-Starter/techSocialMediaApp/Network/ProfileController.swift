//
//  ProfileController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/6/23.
//

//get user profile, post update profile, user posts
import Foundation

class ProfileController {
    
    //    MARK: GET USER PROFILE
    
            enum GetUserProfileError: Error, LocalizedError {
                case itemsNotFound
            }
    
            static func getUserProfile(matching query: [String: String]) async
            throws -> [User] {
                var urlComponents = URLComponents(string: "\(API.url)/userProfile")!
    
                urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
                let (data, response) = try await URLSession.shared.data(from:urlComponents.url!)
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    throw UpdateProfileError.itemsNotFound
                }
    
                let decoder = JSONDecoder()
                let users = try decoder.decode([User].self, from: data)
                return users
            }
        }
    
    
    
    //    MARK: UPDATE PROFILE
    
    enum UpdateProfileError: Error, LocalizedError {
        case itemsNotFound
    }
    
    func updateProfile(userName: String, bio: String, techInterests: String) async throws -> [User] {
        // Initialize our session and request
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: "\(API.url)/updateProfile")!)
        
        // Put the credentials in JSON format
        let credentials: [String: Any] = ["userName": userName, "bio": bio, "techInterests": techInterests]
        
        // Add json data to the body of the request. Also clarify that this is a POST request
        request.httpBody = try JSONSerialization.data(withJSONObject: credentials, options: .prettyPrinted)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        let (data, response) = try await session.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw UpdateProfileError.itemsNotFound
        }
        
        let decoder = JSONDecoder()
        let users = try decoder.decode([User].self, from: data)
        return users
    }
    
    // MARK: USER POSTS

enum GetPostsError: Error, LocalizedError {
    case itemsNotFound
}

 func getUserPosts(matching query: [String: String]) async
throws -> [User] {
    var urlComponents = URLComponents(string: "\(API.url)/userPosts")!

    urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
    let (data, response) = try await URLSession.shared.data(from:urlComponents.url!)
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        throw UpdateProfileError.itemsNotFound
    }

    let decoder = JSONDecoder()
    let users = try decoder.decode([User].self, from: data)
    return users
}














//class ProfileController {
//    enum ProfileError: LocalizedError, Error {
//        case badPost
//    }
//
//    func profileData(userUUID: UUID, userSecret: UUID) async throws -> ProfileUser {
//        let session = URLSession.shared
//        var urlComponents = URLComponents(string: "\(API.url)/posts")!
//
//        urlComponents.queryItems = [
//            URLQueryItem(name: "userUUID", value: "\(userUUID)"),
//            URLQueryItem(name: "userSecret", value: "\(userSecret)")
//        ]
//
//        var request = URLRequest(url: urlComponents.url!)
//
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        //            urlComponents.queryItems = query.map { URLQueryItem(name: $0.key,
//        //                                                                value: $0.value) }
//        let (data, response) = try await session.data(for: request)
//        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
//
//            //                let response = response as? HTTPURLResponse
//            //                print(response)
//            throw ProfileError.badPost
////            let response = response as? HTTPURLResponse
////            print(response?.statusCode)
//        }
//
//        let decoder = JSONDecoder()
//        //        let getPostResponse = try decoder.decode([].self,
//        //                                                    from: data)
//        let profileResponse = try decoder.decode(ProfileUser.self,
//                                                 from: data)
//
//
//        await GetPostTableViewController().tableView.reloadData()
//        return profileResponse
//    }
//
//}
