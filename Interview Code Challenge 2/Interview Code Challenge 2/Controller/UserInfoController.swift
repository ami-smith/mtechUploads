//
//  UserInfoController.swift
//  Interview Code Challenge 2
//
//  Created by Ami Smith on 3/6/23.
//

import Foundation
import UIKit

class RandomAPI {
    enum GetError: Error, LocalizedError {
        case failedToLoadData
    }
    
    class UserInfoController {
        
        func fetchRandomUser(_ userInfo: [String], numberOfUsers: Int) async throws -> Results {
                    
                let url = URL(string:  "https://randomuser.me/api/?inc=name,picture,\(userInfo.joined(separator: ","))&results=\(numberOfUsers)")
                    
            print(url)
            
                let (data, response) = try await URLSession.shared.data(from: (url!))
            
                print()
               print()
                print(String(data: data, encoding: .utf8)!)
                
                guard let httpResponse = response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    throw UserInfoController.RandomAPIError.userNotFound
                }
                
                let jsonDecoder = JSONDecoder()
                let decoded = try jsonDecoder.decode(Results.self, from: data)
                print("This info is the decode \(decoded)")
                return decoded
            }
            

        static func fetchImage(from url: URL) async throws -> UIImage {
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                throw UserInfoController.RandomAPIError.userNotFound
            }
            guard let image = UIImage(data: data) else {
                throw UserInfoController.RandomAPIError.userNotFound
            }
            return image
        }
        enum RandomAPIError: Error, LocalizedError {
            case userNotFound
        }
    }
}
