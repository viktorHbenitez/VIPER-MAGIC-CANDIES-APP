//
//  CandyBuilder.swift
//  Viper-CandiesApp
//
//  Created by Victor Hugo Benitez Bosques on 04/11/20.
//

import Foundation


class CandyBuilder {
    class func buildModule(with view: CandyViewProtocol){
        let presenter = CandyPresenter()
        let interactor = CandyInteractor(with: CandyAPIWorker())
        let router = CandyRouter()
        
        view.presenter = presenter
        presenter.view = view

        presenter.interactor = interactor
        presenter.wireframe = router
        interactor.presenter = presenter
    }
}
