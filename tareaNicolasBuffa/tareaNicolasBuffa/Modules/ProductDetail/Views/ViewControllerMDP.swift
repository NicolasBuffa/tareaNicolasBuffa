//
//  ViewControllerMDP.swift
//  tareaNicolasBuffa
//
//  Created by Nicolás Martín Buffa on 29/12/22.
//

import UIKit

class ViewControllerMDP: UIViewController {
  var product: Product?
    override func viewDidLoad() {
        super.viewDidLoad()
      title = product?.nameProduct
      

    }
  
}
