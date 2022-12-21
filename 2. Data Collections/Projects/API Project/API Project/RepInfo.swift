//
//  RepInfo.swift
//  API Project
//
//  Created by Ami Smith on 12/15/22.
//

import Foundation

struct Results: Codable {
  var results: [Rep]
}
struct Rep: Codable {
  let name: String
  var party: String
  var state: String
  var link: String
}
