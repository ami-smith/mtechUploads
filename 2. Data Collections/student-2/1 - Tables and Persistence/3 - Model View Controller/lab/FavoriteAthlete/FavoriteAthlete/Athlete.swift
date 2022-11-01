//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Ami Smith on 10/21/22.
//

import Foundation

struct Athlete {
    var name: String
    var age: Int
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
        
    }
}
