//
//  Posts.swift
//  Tech Social Media App
//
//  Created by Ami Smith on 11/2/22.
//

import Foundation

struct PostInfo {
    var username: String
    var postBody: String
    var date: String
    
    static let allPosts: [PostInfo] = [
    
        PostInfo(username: "@JunneMurdock", postBody: "DUUUUUDE. We are killing it at this coding thing!!", date: "September 20, 2022"),
        PostInfo(username: "@CalebSmith", postBody: "Keep up the good work! So lucky I married a smoking hot Swift Goddess!", date: "September 24, 2022"),
        PostInfo(username: "@NelsonPierce", postBody: "#appleBeard #codingIsLyfe #theThreeAmigos #myMustacheIsCoolerThanYours",date: "September 28, 2022") ,
        PostInfo(username: "@BraydenLemke", postBody: "It will click, don't worry. Just keep practicing!", date: "September 31, 2022"),
        PostInfo(username: "@GregSlater", postBody: "Hey Kiddo, next time you come visit us, I have a few computer questions for you", date: "October 5, 2022"),
        PostInfo(username: "@MelindaSlater", postBody: "Good Job, Sweetie! So proud of you!", date: "October 14, 2022"),
        PostInfo(username: "@RyanPlitt", postBody: "Hey you should totally come do an internship at my company, you would be great there!", date: "October 19, 2022"),
        PostInfo(username: "@JunneMurdock", postBody: "Hey, we should get together and study this weekend! It's crunch time!", date: "October 28, 2022"),
        PostInfo(username: "@ZacSlater", postBody: "You should make an app that automatically sends me free money every month, just for being your brother!", date: "November 1, 2022"),
        PostInfo(username: "@ZanderEwell", postBody: "Dude I'm so tired.", date: "November 3, 2022")
    ]
}
