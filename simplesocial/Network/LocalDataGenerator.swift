//
//  LocalDataGenerator.swift
//  simplesocial
//
//  Created by Samet Macit on 13.08.2022.
//

import Foundation

class LocalDataManager {
    
    static let shared = LocalDataManager()
    
    private static var mockUsers = [
        User(id: "1", name: "Elon Musk", username: "elonmusk"),
        User(id: "2", name: "John Sundell", username: "johnsundell"),
        User(id: "3", name: "The New York Times", username: "nytimes"),
    ]
    
    private static var posts: [Post] = [
        Post(user: mockUsers[0],
             text: "Some people are no nonsense, but, personally, I like a little nonsense",
             image: "https://images.unsplash.com/photo-1660388330411-26f4cf299a64?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80"),
        
        Post(user: mockUsers[1],
             text: "Awesome! Xcode 14 + Swift 5.7 no longer issues a warning when you initialize a StateObject-marked property with an instance that runs on the MainActor! 🎉",
             image: "https://pbs.twimg.com/media/FUmCSIzWQAkFCU5?format=jpg&name=4096x4096"),
        Post(user: mockUsers[2],
             text: "Many people in Norway have been interacting too much with a walrus named Freya. Officials have warned people to stay away from the 1,300-pound animal, but if that doesn't work, solutions include moving her from the country's coast or killing her.",
             image: "https://pbs.twimg.com/media/FaDGMsuWIAEJpjd?format=jpg&name=medium")
    ]
    
    func getPosts() -> [Post] {
        LocalDataManager.posts
    }
    
    func add(post: Post) {
        LocalDataManager.posts.append(post)
    }
}

