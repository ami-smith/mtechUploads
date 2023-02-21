//
//  EditPostController.swift
//  techSocialMediaApp
//
//  Created by Ami Smith on 2/3/23.
//

import Foundation

class EditPostControlller {
    enum EditPostItemError: Error, LocalizedError {
        case itemsNotFound
        
        
    }
    func fetchItems(matching query: [String: String]) async
    throws -> [Post] {
        var urlComponents = URLComponents(string: "https://tech-social-media-app.fly.dev/editPost")!
        urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw EditPostItemError.itemsNotFound
        }
        
        let decoder = JSONDecoder()
        let editPostResponse = try decoder.decode(EditPostResponse.self, from: data)
        return editPostResponse.results
    }
}
