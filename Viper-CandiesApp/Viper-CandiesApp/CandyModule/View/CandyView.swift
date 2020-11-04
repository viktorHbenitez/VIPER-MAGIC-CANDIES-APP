//
//  CandyView.swift
//  Viper-CandiesApp
//
//  Created by Victor Hugo Benitez Bosques on 18/10/20.
//

import UIKit

class CandyView: UIViewController {
  
  
  @IBOutlet weak private var quantityStepper: UILabel!
  @IBOutlet weak private var quantityLabel: UILabel!
  @IBOutlet weak private var descriptionLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()

  }
  @IBAction func quantityStepperValueChange(_ sender: Any){
    print("Tapped Stepper")
    
  }
  
  
}
