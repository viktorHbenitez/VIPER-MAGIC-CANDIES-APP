//
//  CandyInteractor.swift
//  Viper-CandiesApp
//
//  Created by Victor Hugo Benitez Bosques on 03/11/20.
//

import Foundation
protocol CandyInteractorProtocol {
    func fetchCandy()  // fetch data from candy
    func didUpdate(with newDescription: String)
}
class CandyInteractor: CandyInteractorProtocol {
    
    private var candyEntity: CandyEntity?
    private let apiWorker: CandyAPIWorkerProtocol
    
    // presenter using CandyPresenterProtocol
    var presenter: CandyPresenterProtocol?
    
    required init(with apiWorker: CandyAPIWorkerProtocol) {
        self.apiWorker = apiWorker
    }
    
    func didUpdate(with newDescription: String) {
        let DummyDescription = "new Description " + newDescription
        self.presenter?.interactor(self, didUpdate: DummyDescription)
    }
    

    
    func fetchCandy() {
        
        apiWorker.fetchCandy { [weak self]  candyEntity in
            guard let `self` = self else {return}
            self.candyEntity = candyEntity
            
            // Important: pass to the presenter protocol reference
            self.presenter?.interactor(self, didFetch: candyEntity)
        }
        
        
    }
    
    
    
}
