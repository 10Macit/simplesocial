//
//  PostsPresenter.swift
//  simplesocial
//
//  Created Samet Macit on 13.08.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class PostsPresenter: PostsPresenterProtocol, PostsInteractorOutputProtocol {

    weak private var view: PostsViewProtocol?
    var interactor: PostsInteractorInputProtocol?
    private let router: PostsWireframeProtocol

    init(interface: PostsViewProtocol, interactor: PostsInteractorInputProtocol?, router: PostsWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
