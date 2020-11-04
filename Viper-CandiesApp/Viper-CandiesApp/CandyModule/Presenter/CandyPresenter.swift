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
  
}

class CandyPresenter: CandyPresenterProtocol {
  

  // weak var view: CandyViewProtocol?
  // var interactor: CandyInteractorProtocol?
  // var wireframe : Router
  
  // Update price and candy Quantity
  func interactor(_ interactor: CandyInteractorProtocol,
                  didFetch object: CandyEntity) {
    
    // We pass a model which is dedicated to the view
    
    // Pass to the view throgh view protocols
    
  }
}
