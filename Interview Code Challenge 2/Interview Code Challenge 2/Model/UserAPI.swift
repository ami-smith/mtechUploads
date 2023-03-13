//
//  UserAPI.swift
//  Interview Code Challenge 2
//
//  Created by Ami Smith on 3/6/23.
//
//
//import Foundation
//import UIKit
//
//class UserAPI {
//      enum GetError: Error, LocalizedError {
//        case failedToLoadData
//      }
//        
//      class UserAPIController {
//          
//          func fetchRandomUser(_ userInfo: [String]) async throws -> Results {
//                      
//                  let url = URL(string:  "https://randomuser.me/api/?inc=name,picture,\(userInfo.joined(separator: ","))")
//                      
//                  print(url)
//                      
//                  let (data, response) = try await URLSession.shared.data(from: (url!))
//                  print()
//                  print()
//                  print(String(data: data, encoding: .utf8)!)
//                  
//                  guard let httpResponse = response as? HTTPURLResponse,
//                        httpResponse.statusCode == 200 else {
//                      throw UserInfoController.RandomApiError.userNotFound
//                  }
//                  
//                  let jsonDecoder = JSONDecoder()
//                  let decoded = try jsonDecoder.decode(Response.self, from: data)
//                  print("This info is the decode \(decoded)")
//                  return decoded
//              }
//              
//                  
//                  
//                  static func fetchImage(from url: URL) async throws -> UIImage {
//                      let (data, response) = try await URLSession.shared.data(from: url)
//                      guard let httpResponse = response as? HTTPURLResponse,
//                            httpResponse.statusCode == 200 else {
//                          throw UserInfoController.RandomApiError.userNotFound
//                      }
//                      guard let image = UIImage(data: data) else {
//                          throw UserInfoController.RandomApiError.userNotFound
//                      }
//                      return image
//                  }
//                  
//                  enum RandomApiError: Error, LocalizedError {
//                      case userNotFound
//                  }
//                  
//              }
//          
////          func fetchRandomUser(_ userAmount: [String]) async throws -> Results {
////
////              let url = URL(string:  "https://randomuser.me/api/?inc=name,picture, \(userAmount.joined(separator: ","))")
////
////
////          let (data, response) = try await URLSession.shared.data(from: url!)
////
////          print(String(data: data, encoding: .utf8)!)
////          guard let httpResponse = response as? HTTPURLResponse,
////             httpResponse.statusCode == 200 else {
////            throw UserAPIController.RandomApiError.userNotFound // fixed error: use fully qualified error name
////          }
////          let jsonDecoder = JSONDecoder()
////          let person = try jsonDecoder.decode(Results.self, from: data)
////          print(person)
////          return person // fixed error: use value without parentheses
////        }
//        func randomImage(from url: URL) async throws -> UIImage { 
//          let (data, response) = try await URLSession.shared.data(from: url)
//          guard let httpResponse = response as? HTTPURLResponse,
//             httpResponse.statusCode == 200 else {
//            throw UserAPIController.RandomApiError.userNotFound
//          }
//          guard let image = UIImage(data: data) else {
//            throw UserAPIController.RandomApiError.userNotFound
//          }
//          return image
//        }
//        enum RandomApiError: Error, LocalizedError {
//          case userNotFound
//        }
//      }
//    }
