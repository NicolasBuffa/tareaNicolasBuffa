//
//  ViewControllerPDP.swift
//  tareaNicolasBuffa
//
//  Created by Nicolás Martín Buffa on 26/12/22.
//

import UIKit

class ViewControllerPDP: UIViewController {
  
  var products: [Product] = []
  

  @IBOutlet weak var label: UILabel!
  override func viewDidLoad() {
        super.viewDidLoad()

      label.text = products[1].nameProduct
      
    }
  
  
}
