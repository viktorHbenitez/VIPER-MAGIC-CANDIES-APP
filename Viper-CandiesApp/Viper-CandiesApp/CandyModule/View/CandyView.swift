//
//  CandyView.swift
//  Viper-CandiesApp
//
//  Created by Victor Hugo Benitez Bosques on 18/10/20.
//

import UIKit

protocol CandyViewProtocol: class{
    
    var presenter: CandyPresenterProtocol? { get set }
    // ** Update UI with value returned.
    /// Set the view Object of Type CandyEntity
    func set(viewModel: CandyViewModel)
    func set(new description: CandyViewModel)
    
}
class CandyView: UIViewController, CandyViewProtocol {
    var presenter: CandyPresenterProtocol?
    
    @IBOutlet weak private var quantityStepper: UILabel!
    @IBOutlet weak private var quantityLabel: UILabel!
    @IBOutlet weak private var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.fetchCandy()
    }
    
    @IBAction func quantityStepperValueChange(_ sender: Any){
        presenter?.update(with: "Viktor")
    }
    
    func set(new description: CandyViewModel) {
        descriptionLabel.text = description.description
    }
    
    func set(viewModel: CandyViewModel) {
        descriptionLabel.text = viewModel.description
    }
    
}


struct CandyViewModel {
    let description: String
    
}
