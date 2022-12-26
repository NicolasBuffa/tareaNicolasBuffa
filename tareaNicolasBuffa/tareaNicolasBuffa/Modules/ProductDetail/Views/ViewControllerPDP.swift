//
//  ViewControllerPDP.swift
//  tareaNicolasBuffa
//
//  Created by Nicolás Martín Buffa on 26/12/22.
//

import UIKit

class ViewControllerPDP: UIViewController {
  @IBOutlet weak var label: UILabel!
  var product: Product?

  override func viewDidLoad() {
    super.viewDidLoad()

    guard let product = product else { return }

    label.text = product.nameProduct
    print(product)
    print(product.nameProduct)
    print(product.sizeProduct)
    print(product.image)
    print(product.colorProduct)

  }
}
