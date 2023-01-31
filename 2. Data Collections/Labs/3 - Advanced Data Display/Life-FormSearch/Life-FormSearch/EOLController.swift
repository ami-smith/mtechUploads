//
//  LifeSearchController.swift
//  Life-FormSearch
//
//  Created by Ami Smith on 1/20/23.
//

import UIKit

extension Data {
    func prettyPrintedJSONString() {
        guard
            let jsonObject = try? JSONSerialization.jsonObject(with: self, options: []),
            let jsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted]),
            let prettyJSONString = String(data: jsonData, encoding: .utf8) else {
            print("Failed to read JSON Object.")
            return
        }
        print(prettyJSONString)
    }
}
class EOLController {
    
}
