//
//  CommentController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/6/23.
//


//we have to put get comments, post create comments, post update likes,  info in this page
import Foundation

class Comments {
    
    //MARK: GET COMMENTS
    
    enum GetCommentsItemError: Error, LocalizedError {
        case itemsNotFound
    }
    
    func getComments(userSecret: UUID, postId: Int, pageNumber: Int?) async throws -> [Comment] {
        // Initialize our session and request
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: "\(API.url)/comments")!)
        
        // Put the credentials in JSON format
        let credentials: [String: Any] = ["userSecret": userSecret, "postId": postId, "pageNumber": pageNumber ?? 0]
        
        // Add json data to the body of the request. Also clarify that this is a POST request
        request.httpBody = try JSONSerialization.data(withJSONObject: credentials, options: .prettyPrinted)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        let (data, response) = try await session.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw GetCommentsItemError.itemsNotFound
        }
        
        let decoder = JSONDecoder()
        let comments = try decoder.decode([Comment].self, from: data)
        return comments
    }
    
    //MARK: POST CREATE COMMENTS
    
    enum CreateCommentItemError: Error, LocalizedError {
        case itemsNotFound
    }
    
    func createComment(userSecret: UUID, commentBody: String, postId: Int) async throws -> [Comment] {
        // Initialize our session and request
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: "\(API.url)/createComment")!)
        
        // Put the credentials in JSON format
        let credentials: [String: Any] = ["userSecret": userSecret, "commentBody": commentBody, "postId": postId]
        
        // Add json data to the body of the request. Also clarify that this is a POST request
        request.httpBody = try JSONSerialization.data(withJSONObject: credentials, options: .prettyPrinted)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        let (data, response) = try await session.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw CreateCommentItemError.itemsNotFound
        }
        
        let decoder = JSONDecoder()
        let comments = try decoder.decode([Comment].self, from: data)
        return comments
    }
}
    



//MARK: POST UPDATE LIKES

class Likes {
    
    enum UpdateLikesItemError: Error, LocalizedError {
        case itemsNotFound
    }
    
    func updateLikes(userSecret: UUID, postId: Int) async throws -> [Like] {
        // Initialize our session and request
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: "\(API.url)/updateLikes")!)
        
        // Put the credentials in JSON format
        let credentials: [String: Any] = ["userSecret": userSecret, "postId": postId]
        
        // Add json data to the body of the request. Also clarify that this is a POST request
        request.httpBody = try JSONSerialization.data(withJSONObject: credentials, options: .prettyPrinted)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        let (data, response) = try await session.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw UpdateLikesItemError.itemsNotFound
        }
        
        let decoder = JSONDecoder()
        let likes = try decoder.decode([Like].self, from: data)
        return likes
    }
}

enum UpdateCommentsItemError: Error, LocalizedError {
    case itemsNotFound
}

//func updateComments(userSecret: UUID, postId: Int) async throws -> [Like] {
//    // Initialize our session and request
//    let session = URLSession.shared
//    var request = URLRequest(url: URL(string: "\(API.url)/updateLikes")!)
//
//    // Put the credentials in JSON format
//    let credentials: [String: Any] = ["userSecret": userSecret, "postId": postId]
//
//    // Add json data to the body of the request. Also clarify that this is a POST request
//    request.httpBody = try JSONSerialization.data(withJSONObject: credentials, options: .prettyPrinted)
//    request.httpMethod = "POST"
//    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//
//    let (data, response) = try await session.data(for: request)
//    guard let httpResponse = response as? HTTPURLResponse,
//          httpResponse.statusCode == 200 else {
//        throw UpdateLikesItemError.itemsNotFound
//    }
//
//    let decoder = JSONDecoder()
//    let likes = try decoder.decode([Like].self, from: data)
//    return likes
//}
//}
//
