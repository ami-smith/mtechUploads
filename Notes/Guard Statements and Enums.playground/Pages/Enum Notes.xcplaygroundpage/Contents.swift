//: [Previous](@previous)

import Foundation

enum CompassPoint {
    case north, south, east, west
}
var compassHeading = CompassPoint.west
compassHeading = .north

print(compassHeading)
switch compassHeading {
case .north:
    print("Heading North")
case .east:
    print("Heading East")
case .south:
    print("Heading South")
case .west:
    print("Heading West")
}
enum Genre {
    case animated, action, thriller
}
struct Movie {
    var name: String
    var releaseYear: Int?
    var genre: Genre
}
let movie = Movie(name: "The Ring", releaseYear: 2007, genre: .thriller)
print(movie)
