//
//  MyCustomTableViewCell.swift
//  tareaNicolasBuffa
//
//  Created by Nicolás Martín Buffa on 20/12/22.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
  @IBOutlet weak var nameProduct: UILabel!
  @IBOutlet weak var discountProduct: UILabel!
  @IBOutlet weak var priceProduct: UILabel!
  @IBOutlet weak var oldPriceProduct: UILabel!
  @IBOutlet weak var propertyColor: UILabel!
  @IBOutlet weak var colorProduct: UILabel!
  @IBOutlet weak var propertySize: UILabel!
  @IBOutlet weak var sizeProduct: UILabel!
  @IBOutlet weak var message: UILabel!
  @IBOutlet weak var btnAddCart: UIButton!
  @IBOutlet weak var imgProduct: UIImageView!

  override func awakeFromNib() {
    super.awakeFromNib()
      configurationLabels()
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
    
    func configurationLabels(){

        configFontSize ()
        configColor ()

        
        propertyColor.text = "Color:"
        propertySize.text = "Talle:"
        

        
    }
    
    func configFontSize (){
        nameProduct.font = UIFont.boldSystemFont(ofSize: 14)
        discountProduct.font = UIFont.boldSystemFont(ofSize: 15)
        priceProduct.font = UIFont.systemFont(ofSize: 20)
        oldPriceProduct.font = UIFont.systemFont(ofSize: 15)
        propertyColor.font = UIFont.systemFont(ofSize: 14)
        colorProduct.font = UIFont.systemFont(ofSize: 14)
        propertySize.font = UIFont.systemFont(ofSize: 14)
        sizeProduct.font = UIFont.systemFont(ofSize: 14)
    }
    
    func configColor (){
        discountProduct.textColor = UIColor(red: 0.07, green: 0.45, blue: 0.87, alpha: 1.00)
        priceProduct.textColor = .darkGray
        oldPriceProduct.textColor = .lightGray
        message.backgroundColor = UIColor(red: 0.91, green: 0.75, blue: 0.41, alpha: 0.80)
    }

}
