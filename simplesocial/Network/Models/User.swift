//
//  User.swift
//  simplesocial
//
//  Created by Samet Macit on 13.08.2022.
//

import Foundation

struct User {
    let id: String
    let name: String
    let username: String
    
    init(id: String = UUID().uuidString, name: String, username: String) {
        self.id = id
        self.name = name
        self.username = username
    }
}
