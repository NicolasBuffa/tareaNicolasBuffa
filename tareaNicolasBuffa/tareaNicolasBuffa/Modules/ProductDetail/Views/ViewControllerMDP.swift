//
//  ViewControllerMDP.swift
//  tareaNicolasBuffa
//
//  Created by Nicolás Martín Buffa on 29/12/22.
//

import UIKit

class ViewControllerMDP: UIViewController {
  var product: Product?
  
  @IBOutlet weak var priceProduct: UILabel!
  @IBOutlet weak var propertyPrice: UILabel!
  @IBOutlet weak var sizeProduct: UILabel!
  @IBOutlet weak var propertySize: UILabel!
  @IBOutlet weak var colorProduct: UILabel!
  @IBOutlet weak var propertyColor: UILabel!
  @IBOutlet weak var descriptionProduct: UITextView!
  @IBOutlet weak var nameProduct: UILabel!
  override func viewDidLoad() {
        super.viewDidLoad()
      title = product?.nameProduct
    descriptionProduct.isEditable = false
    dateConfiguration()
    }
  
  func dateConfiguration (){
    guard let product = product else {return}
    nameProduct.text = product.nameProduct
    descriptionProduct.text = product.description
    propertyColor.text = "Color:"
    colorProduct.text = product.colorProduct
    propertySize.text = "Talle:"
    sizeProduct.text = product.sizeProduct
    propertyPrice.text = "Precio:"
    priceProduct.text = product.priceProduct
    
  }
  
}
