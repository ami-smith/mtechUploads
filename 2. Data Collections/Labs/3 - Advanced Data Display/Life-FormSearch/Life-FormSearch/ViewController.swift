//
//  ViewController.swift
//  Life-FormSearch
//
//  Created by Ami Smith on 1/20/23.
//

import UIKit

class ViewController: UIViewController {

    var urlComponents = URLComponents(string:
       "https://api.nasa.gov/planetary/apod")!
    urlComponents.queryItems = [
        "api_key": "DEMO_KEY",
        "date": "2013-07-16"
    ].map { URLQueryItem(name: $0.key, value: $0.value) }
    Task {
        let (data, response) = try await URLSession.shared.data(from:
           urlComponents.url!)
        if let httpResponse = response as? HTTPURLResponse,
            httpResponse.statusCode == 200,
            let string = String(data: data, encoding: .utf8) {
            print(string)
        }
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

