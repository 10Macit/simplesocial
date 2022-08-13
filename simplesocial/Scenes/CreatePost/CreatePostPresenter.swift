//
//  CreatePostPresenter.swift
//  simplesocial
//
//  Created Samet Macit on 13.08.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class CreatePostPresenter: CreatePostPresenterProtocol, CreatePostInteractorOutputProtocol {

    weak private var view: CreatePostViewProtocol?
    var interactor: CreatePostInteractorInputProtocol?
    private let router: CreatePostWireframeProtocol

    init(interface: CreatePostViewProtocol, interactor: CreatePostInteractorInputProtocol?, router: CreatePostWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
