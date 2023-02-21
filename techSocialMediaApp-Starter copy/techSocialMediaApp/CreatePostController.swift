//
//  CreatePostController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/2/23.
//

import Foundation
class CreatePostController {
    
    enum CreatePostItemError: Error, LocalizedError {
        case itemsNotFound
    }
    
        func createPost(title: String, body: String) async throws -> [Post] {
            // Initialize our session and request
            let session = URLSession.shared
            var request = URLRequest(url: URL(string: "\(API.url)/createPost")!)
            
            // Put the credentials in JSON format
            let credentials: [String: Any] = ["title": title, "body": body]
            
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
            let createPostResponse = try decoder.decode(CreatePostResponse.self, from: data)
            return createPostResponse.results
        }
        
        
    }
    


