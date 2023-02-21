//
//  DeletePostController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/3/23.
//

import Foundation


class DeletePostControlller {
    enum DeletePostItemError: Error, LocalizedError {
        case itemsNotFound
        case imageDataMissing
        
    }
    func fetchItems(matching query: [String: String]) async
    throws -> [Post] {
        var urlComponents = URLComponents(string: "https://tech-social-media-app.fly.dev/post")!
        urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw DeletePostItemError.itemsNotFound
        }
        
        let decoder = JSONDecoder()
        let deletePostResponse = try decoder.decode(DeletePostRespose.self,
                                                    from: data)
        return deletePostResponse.results
    }

