//
//  APIMovie.swift
//  CoreDataFavoriteMovies
//
//  Created by Parker Rushton on 11/5/22.
//

import Foundation

struct SearchResponse: Codable {
    var movies: [APIMovie]
    
    enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }

}

struct APIMovie: Codable, Identifiable, Hashable {
    let title: String
    let year: String
    let imdbID: String
    let posterURL: URL?
    
    var id: String { imdbID }

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case posterURL = "Poster"
    }

}


extension Movie {
    var posterURL: URL? {
        guard let posterURLString else { return nil }
        return URL(string: posterURLString)
    }
    
}
