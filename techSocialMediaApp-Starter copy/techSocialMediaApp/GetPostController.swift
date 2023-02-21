//
//  GetPostController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/2/23.
//

//This is where we implement the API


import Foundation

class GetPostController {
    
    enum GetPostItemError: Error, LocalizedError {
        case itemsNotFound
        case imageDataMissing
        
    }
    func fetchItems(matching query: [String: String]) async
    throws -> [Posts] {
        var urlComponents = URLComponents(string: "https://tech-social-media-app.fly.dev/posts")!
        
        urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        let (data, response) = try await URLSession.shared.data(from:
                                                                    urlComponents.url!)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw GetPostItemError.itemsNotFound
        }
        
        let decoder = JSONDecoder()
        let getPostResponse = try decoder.decode(GetPostResponse.self, from: data)
        return getPostResponse.results
    }
}
