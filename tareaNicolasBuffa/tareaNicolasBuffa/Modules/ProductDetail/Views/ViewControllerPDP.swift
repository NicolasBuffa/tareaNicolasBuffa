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
    descritpionProduct.isEditable = false
    configView()
  }
  
  func configView(){
    configColor()
    configFontSize()
    configData()
  }
  
  func configColor(){
    descritpionProduct.textColor = UIColor(red: 0.78, green: 0.77, blue: 0.76, alpha: 1.00)
    nameProduct.textColor = UIColor(red: 0.24, green: 0.24, blue: 0.24, alpha: 1.00)
  }
  func configData(){
    guard let product = product else { return }
    descritpionProduct.text = product.description
    nameProduct.text = product.nameProduct
    title = product.nameProduct
    
    
  }
  func configFontSize (){
    
  }
}




