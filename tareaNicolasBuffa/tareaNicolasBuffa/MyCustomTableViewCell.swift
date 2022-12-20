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
    nameProduct.font = UIFont.boldSystemFont(ofSize: 14)
    discountProduct.font = UIFont.boldSystemFont(ofSize: 15)
    discountProduct.textColor = .blue
    priceProduct.font = UIFont.systemFont(ofSize: 22)
    priceProduct.textColor = .gray
    oldPriceProduct.font = UIFont.systemFont(ofSize: 18)
    oldPriceProduct.textColor = .lightGray
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }

}
