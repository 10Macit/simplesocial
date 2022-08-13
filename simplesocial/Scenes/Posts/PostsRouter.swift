//
//  PostsRouter.swift
//  simplesocial
//
//  Created Samet Macit on 13.08.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class PostsRouter: PostsWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = PostsViewController(nibName: nil, bundle: nil)
        let navigationController = UINavigationController(rootViewController: view)
        navigationController.navigationBar.isTranslucent = true
        navigationController.navigationBar.backgroundColor = .white
        let interactor = PostsInteractor()
        let router = PostsRouter()
        let presenter = PostsPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return navigationController
    }
    
    func routeToCreatePost(delegate: CreatePostDelegate, selectedUser: User) {
        let createPostVC = CreatePostRouter.createModule(delegate: delegate, selectedUser: selectedUser)
        viewController?.navigationController?.pushViewController(createPostVC, animated: true)
    }
}
