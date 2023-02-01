//
//  APIRequest.swift
//  Life-FormSearch
//
//  Created by Ami Smith on 1/31/23.
//

import Foundation

protocol APIRequest {
    associatedtype Response
    
    var urlRequest: URLRequest { get }
    
    func decodeResponse(data: Data) throws -> Response
}

enum APIRequestError: Error {
    case itemNotFound
}
