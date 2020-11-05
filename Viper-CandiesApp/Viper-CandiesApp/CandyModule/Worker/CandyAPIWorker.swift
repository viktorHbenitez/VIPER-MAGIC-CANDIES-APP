//
//  CandyAPIWorker.swift
//  Viper-CandiesApp
//
//  Created by Victor Hugo Benitez Bosques on 03/11/20.
//

import Foundation

// MARK: - IMPORTANT: Use Entity Class

protocol CandyAPIWorkerProtocol {
  func fetchCandy(callBack: (CandyEntity) -> Void )
}

class CandyAPIWorker: CandyAPIWorkerProtocol {
  func fetchCandy(callBack: (CandyEntity) -> Void) {
    let candyEntity = CandyEntity(title: "Magic Candy",
                                  description: "Viktor VIPER.",
                                  price: 100,
                                  imageName: "magic_candy")
    callBack(candyEntity)
  }
  
}
