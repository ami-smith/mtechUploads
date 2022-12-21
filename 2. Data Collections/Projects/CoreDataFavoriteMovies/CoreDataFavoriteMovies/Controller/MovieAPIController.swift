//
//  MovieAPIController.swift
//  CoreDataFavoriteMovies
//
//  Created by Parker Rushton on 11/1/22.
//

import Foundation

class MovieAPIController {
    
    let baseURL = URL(string: "https://www.omdbapi.com/")!
    let apiKey = "7c138597"

    
    func fetchMovies(with searchTerm: String) async throws -> [APIMovie] {
        var searchURL = baseURL
        let apiKeyItem = URLQueryItem(name: "apikey", value: apiKey)
        let searchItem = URLQueryItem(name: "s", value: searchTerm)
        searchURL.append(queryItems: [searchItem, apiKeyItem])
        let (data, _) = try await URLSession.shared.data(from: searchURL)
//        guard let httpResponse = response as? HTTPURLResponse else {
//            return []
//        }
//        data.prettyPrintedJSONString()
        
        
        let searchResponse = try JSONDecoder().decode(SearchResponse.self, from: data)
        return searchResponse.movies
    }

    
    
    /*
     // this is just to display fake movies
     
    private func fakeMovies() -> [APIMovie] {
        let posterURL1 = URL(string: "https://m.media-amazon.com/images/M/MV5BN2ZkNDgxMjMtZmRiYS00MzFkLTk5ZjgtZDJkZWMzYmUxYjg4XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg")
        let mockMovie1 = APIMovie(title: "Nacho Libre", year: "2006", imdbID: "tt0457510", posterURL: posterURL1)
        let posterURL2 = URL(string: "https://m.media-amazon.com/images/M/MV5BNjYwNTA3MDIyMl5BMl5BanBnXkFtZTYwMjIxNjA3._V1_SX300.jpg")
        let mockMovie2 = APIMovie(title: "Napoleon Dynamite", year: "2004", imdbID: "tt0374900", posterURL: posterURL2)
        let mockMovie3 = APIMovie(title: "Unknown Thriller", year: "not sure", imdbID: "tt03948", posterURL: nil)
        return [mockMovie1, mockMovie2, mockMovie3]
    }
    */
}


extension Data {
    func prettyPrintedJSONString() {
        guard
            let jsonObject = try?
               JSONSerialization.jsonObject(with: self,
               options: []),
            let jsonData = try?
               JSONSerialization.data(withJSONObject:
               jsonObject, options: [.prettyPrinted]),
            let prettyJSONString = String(data: jsonData,
               encoding: .utf8) else {
                print("Failed to read JSON Object.")
                return
        }
        print(prettyJSONString)
    }
}
