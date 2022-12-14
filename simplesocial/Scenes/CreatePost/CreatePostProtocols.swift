//
//  CreatePostProtocols.swift
//  simplesocial
//
//  Created Samet Macit on 13.08.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

// MARK: Wireframe -
protocol CreatePostWireframeProtocol: AnyObject {
    func routeToBack()
}
// MARK: Presenter -
protocol CreatePostPresenterProtocol: AnyObject {

    var interactor: CreatePostInteractorInputProtocol? { get set }
    
    func savePost(text: String?, imageUrl: String?)
}

// MARK: Interactor -
protocol CreatePostInteractorOutputProtocol: AnyObject {

    /* Interactor -> Presenter */
    
    func postSaveSuccess()
}

protocol CreatePostInteractorInputProtocol: AnyObject {

    var presenter: CreatePostInteractorOutputProtocol?  { get set }

    /* Presenter -> Interactor */
    func savePost(user: User, text: String, imageUrl: String)
}

// MARK: View -
protocol CreatePostViewProtocol: AnyObject {

    var presenter: CreatePostPresenterProtocol?  { get set }

    func presentSaveError(title: String, message: String)
}
