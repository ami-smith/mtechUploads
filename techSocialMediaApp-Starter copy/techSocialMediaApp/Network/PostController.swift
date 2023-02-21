//
//  PostController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/6/23.
//

import Foundation

class PostController {
    
//    MARK: GET USER POSTS
    enum GetPostItemError: Error, LocalizedError {
        case itemsNotFound
    }
    
    static func fetchItemsGetPost() async throws -> [Post] {
        var urlComponents = URLComponents(string: "\(API.url)/posts")!
        
        let queryParams = [
            "userSecret": User.current!.secret.uuidString,
            "pageNumber": "0"
        ]
        
        
        urlComponents.queryItems = queryParams.map { URLQueryItem(name: $0.key, value: $0.value) }
        let (data, response) = try await URLSession.shared.data(from:urlComponents.url!)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw GetPostItemError.itemsNotFound
        }
        
        let decoder = JSONDecoder()
        let posts = try decoder.decode([Post].self, from: data)
        return posts
    }
    
//    MARK: DELETE
    
    enum DeletePostItemError: Error, LocalizedError {
        case itemsNotFound
        
    }
    
    static func fetchItemsDeletePost(userSecret: UUID, postid: Int) async throws {
        var urlComponents = URLComponents(string: "\(API.url)/post")!
        
        let postDictionary: [String: String] = ["userSecret": userSecret.uuidString, "postid": String(postid)]
        
        urlComponents.queryItems = postDictionary.map { URLQueryItem(name: $0.key, value: $0.value) }
        
        var request = URLRequest(url:urlComponents.url!)
        request.httpMethod = "DELETE"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let (_ , response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw DeletePostItemError.itemsNotFound
        }
    }
    
//    MARK: EDIT
    
    enum EditPostItemError: Error, LocalizedError {
        case itemsNotFound
    }
    
    static func fetchItemsEditPost(postid: Int, title: String, body: String) async throws {
        // Initialize our session and request
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: "\(API.url)/editPost")!)
        
        // Put the credentials in JSON format
        let postDictionary: [String: Any] = ["userSecret": User.current!.secret.uuidString, "post": [
            "title": title,
            "body": body]
            ]
        
        // Add json data to the body of the request. Also clarify that this is a POST request
        request.httpBody = try JSONSerialization.data(withJSONObject: postDictionary, options: .prettyPrinted)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        let (data, response) = try await session.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw CreatePostItemError.itemsNotFound
        }
        
//        let decoder = JSONDecoder()
//        let posts = try decoder.decode([Post].self, from: data) //don't need to decode
//        return posts //not returning post
//    }
 
//    }
//    MARK: Create
    
    enum CreatePostItemError: Error, LocalizedError {
        case itemsNotFound
    }
    
        static func createPost(title: String, body: String) async throws -> [Post] {
            // Initialize our session and request
            let session = URLSession.shared
            var request = URLRequest(url: URL(string: "\(API.url)/createPost")!)
            
            // Put the credentials in JSON format
            let credentials: [String: Any] = ["userSecret": User.current!.secret.uuidString, "post": [
                        "title": title,
                        "body": body]
                        ]
            
            // Add json data to the body of the request. Also clarify that this is a POST request
            
            request.httpBody = try JSONSerialization.data(withJSONObject: credentials, options: .prettyPrinted)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            
            let (data, response) = try await session.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                throw CreatePostItemError.itemsNotFound
            }
            
            let decoder = JSONDecoder()
            let posts = try decoder.decode([Post].self, from: data)
            return posts
        }
        
//    MARK: GET PERSONAL POSTS
    
        enum GetMyPostItemError: Error, LocalizedError {
            case itemsNotFound
        }
        
        static func fetchItemsGetMyPost() async throws -> [Post] {
            var urlComponents = URLComponents(string: "https://tech-social-media-app.fly.dev/userPosts")!

            //qsp are JSON body is JSON data
            let queryParams = [
                "userSecret": User.current!.secret.uuidString,
                "userUUID": User.current!.userUUID?.uuidString,
                "pageNumber": "0"
            ]
            
        urlComponents.queryItems = queryParams.map { URLQueryItem(name: $0.key, value: $0.value) }
            
        let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
            
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw GetMyPostItemError.itemsNotFound
        }

        let decoder = JSONDecoder()
        let posts = try decoder.decode([Post].self, from: data)
        return posts
    }
    }
