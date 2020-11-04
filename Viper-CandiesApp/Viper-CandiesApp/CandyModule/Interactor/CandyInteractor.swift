//
//  CandyInteractor.swift
//  Viper-CandiesApp
//
//  Created by Victor Hugo Benitez Bosques on 03/11/20.
//

import Foundation
protocol CandyInteractorProtocol {
  func fetchCandy()  // fetch data from candy
  
}
class CandyInteractor: CandyInteractorProtocol {
  
  private var candyEntity: CandyEntity?
  private let apiWorker: CandyAPIWorkerProtocol
  
  // presenter using CandyPresenterProtocol
  var presenter: CandyPresenterProtocol?

  init(with apiWorker: CandyAPIWorkerProtocol) {
    self.apiWorker = apiWorker
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
