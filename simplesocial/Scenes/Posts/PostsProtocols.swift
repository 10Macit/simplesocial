//
//  PostsProtocols.swift
//  simplesocial
//
//  Created Samet Macit on 13.08.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

// MARK: Wireframe -
protocol PostsWireframeProtocol: AnyObject {

}
// MARK: Presenter -
protocol PostsPresenterProtocol: AnyObject {

    var interactor: PostsInteractorInputProtocol? { get set }
}

// MARK: Interactor -
protocol PostsInteractorOutputProtocol: AnyObject {

    /* Interactor -> Presenter */
}

protocol PostsInteractorInputProtocol: AnyObject {

    var presenter: PostsInteractorOutputProtocol?  { get set }

    /* Presenter -> Interactor */
}

// MARK: View -
protocol PostsViewProtocol: AnyObject {

    var presenter: PostsPresenterProtocol?  { get set }

    /* Presenter -> ViewController */
}