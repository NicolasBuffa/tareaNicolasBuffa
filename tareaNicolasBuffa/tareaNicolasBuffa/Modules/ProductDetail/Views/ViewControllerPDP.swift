//
//  ViewControllerPDP.swift
//  tareaNicolasBuffa
//
//  Created by Nicolás Martín Buffa on 26/12/22.
//

import UIKit

class ViewControllerPDP: UIViewController{

  var product: Product?

  @IBOutlet weak var descritpionProduct: UITextView!
  @IBOutlet weak var nameProduct: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    
   
    guard let product = product else { return }
    

    title = product.nameProduct
    
    descritpionProduct.isEditable = false
    descritpionProduct.text = product.description
    
    nameProduct.text = product.nameProduct
    
    
    
    
    print(product)
    print(product.nameProduct)
    print(product.sizeProduct)
    print(product.image)
    print(product.colorProduct)

  }
}




