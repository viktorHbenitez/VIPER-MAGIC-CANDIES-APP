//
//  CandyPresenter.swift
//  Viper-CandiesApp
//
//  Created by Victor Hugo Benitez Bosques on 03/11/20.
//

import Foundation

protocol CandyPresenterProtocol{
    
    // The Interactor will inform the Presenter a successful fetch
    func interactor(_ interactor: CandyInteractorProtocol,
                    didFetch object: CandyEntity)
    func interactor(_ interactor: CandyInteractorProtocol, didUpdate object: String)
    
    // The presenter will fetch data from interactor
    func fetchCandy()
    func update(with description: String)
    
}

class CandyPresenter: CandyPresenterProtocol {
    
    var interactor: CandyInteractorProtocol?
    weak var view: CandyViewProtocol?
    var wireframe: CandyRouterProtocol?
    
    func fetchCandy() {
        interactor?.fetchCandy()
    }
    
    func update(with description: String){
        interactor?.didUpdate(with: description)
    }
    
    func interactor(_ interactor: CandyInteractorProtocol,
                    didUpdate object: String) {
        
        // parse to viewmodel
        let candyNewDescription = CandyViewModel(description: object)
        // send to view
        view?.set(new: candyNewDescription)
    }
    
    
    
    // weak var view: CandyViewProtocol?
    
    // var interactor: CandyInteractorProtocol?
    
    // var wireframe : Router
    
    // Update price and candy Quantity
    func interactor(_ interactor: CandyInteractorProtocol,
                    didFetch object: CandyEntity) {
        
        // We pass a model which is dedicated to the view
        let candyViewModel = CandyViewModel(description: object.description)
        // Pass to the view throgh view protocols
        view?.set(viewModel: candyViewModel)
    }
}
