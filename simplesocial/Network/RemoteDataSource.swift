//
//  RemoteDataSource.swift
//  simplesocial
//
//  Created by Samet Macit on 13.08.2022.
//

import Foundation

final class RemoteDataSource: DataSource {
    
    func fetchPosts() -> [Post] {
        LocalDataManager.shared.getPosts()
    }
    
    func fetchUsers() -> [User] {
        []
    }
    
    func createPost(post: Post) {
        LocalDataManager.shared.add(post: post)
    }
}
