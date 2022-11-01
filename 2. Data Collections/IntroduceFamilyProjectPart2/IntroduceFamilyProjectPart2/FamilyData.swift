//
//  FamilyData.swift
//  IntroduceFamilyProjectPart2
//
//  Created by Ami Smith on 10/31/22.
//

import Foundation
import UIKit

struct FamilyInfo {
    var name: String
    var familyPicture: String
    var familyDescription: String
    
    static let familyMembers: [FamilyInfo] = [
        
        FamilyInfo(name: "Dad", familyPicture: "Dad.jpg", familyDescription: "My dad is one of the hardest working people I know! He is like the energizer bunny, and you can always count on him! He loves the outdoors and hunting, and he loves animals, especially our horses and mules! He is hilarious and he's the king of dad jokes."),
        FamilyInfo(name: "Mom", familyPicture: "Mom.jpg", familyDescription: "My mom is the most selfless and giving person I've ever met! She's a great listener, and she's always willing to help! She is basically Super Mom, because not only does she do everything for our family, but she also works and is studying to go to law school!"),
        FamilyInfo(name: "Ami", familyPicture: "Ami.jpg", familyDescription: "I'm the oldest child in my family. I served a mission in Lubbock, Texas. When I came back, I graduated in Elementary Education from BYU. I taught first grade for 2 years, but then decided to pursue a different career instead. I enjoy true crime podcasts, going for walks, and hanging out with friends and family."),
        FamilyInfo(name: "Caleb", familyPicture: "Caleb.jpg", familyDescription: "Caleb is my cutie husband and my best friend! He makes me laugh constantly, and he's such a good listener and takes such good care of me! He is currently studying at UVU to get a Master's degree in Cybersecurity, and I'm so proud of all his hard work! He enjoys Marvel movies, video games, and of course hanging out with his awesome wife!"),
        FamilyInfo(name: "Zac", familyPicture: "Zac.jpg", familyDescription: "Zac is Mr. Athletic! He runs several miles every day, and has even run a marathon! He's also applying to dental schools right now, and is working on completing his Bachelor's Degree at UVU. He is hilarious, and you can always count on him to cheer you up! He's a great listener and a true and loyal friend."),
        FamilyInfo(name: "Nic", familyPicture: "Nic.jpg", familyDescription: "Nic has an adventurous soul and a free spirit. He's always off on some adventure, and you can always count on him to be doing something active outdoors or hanging out with his friends. When you're lucky enough to get to spend time with him, he gives great back scratches. He recently graduated from Snow College and has been working with Vivint doing summer sales."),
        FamilyInfo(name: "Colby", familyPicture: "Colby.jpg", familyDescription: "Colby is an encyclopedia of knowledge! He knows so many cool, random facts! He's also very athletic and loves to run and play golf. He often makes really yummy food for the family, including delicious ice cream and desserts. He loves to play video games, and one of our favorite things to do together is to work on puzzles."),
        FamilyInfo(name: "Sophie", familyPicture: "Sophie.jpg", familyDescription: "Sophie is the baby of the family, and definitely the most spoiled! Her older siblings love to tease her, but only because they love her so much! She's the little sister I waited 15 years for, and she was worth the wait! She's very active and enjoys tennis, cheer, and gymnastics. She is rarely called by her name, and is fondly referred to by any number of random nicknames, including 'Monkey', 'Rat', 'Sulphie', and 'Chungus'.")
        
    ]
}
