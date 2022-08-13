//
//  DataSource.swift
//  simplesocial
//
//  Created by Samet Macit on 13.08.2022.
//

import Foundation

protocol DataSource: AnyObject {
    func fetchUsers() -> [User]
    func fetchPosts() -> [Post]
    func createPost(post: Post)
}
