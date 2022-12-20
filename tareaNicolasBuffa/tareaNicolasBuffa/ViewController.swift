//
//  ViewController.swift
//  tareaNicolasBuffa
//
//  Created by Nicolás Martín Buffa on 19/12/22.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!

  var products: [Product] = [Product(), Product()]

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "MyCustomTableViewCell")
    tableView.dataSource = self
  }
}

extension ViewController: UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return products.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomTableViewCell", for: indexPath) as? MyCustomTableViewCell

    let product = products[indexPath.row]

    let customCell = configureCell(cell: cell, withProduct: product)

    return customCell!
  }

  func configureCell(cell: MyCustomTableViewCell?, withProduct product: Product) -> MyCustomTableViewCell? {
    cell?.discountProduct.text = product.discountProduct
    cell?.oldPriceProduct.text = product.oldPriceProduct
    cell?.priceProduct.text = product.priceProduct
    cell?.nameProduct.text = product.nameProduct

    cell?.colorProduct.text = product.colorProduct
    cell?.sizeProduct.text = product.sizeProduct

    return cell
  }
}

struct Product {
  var discountProduct = "20"
  var oldPriceProduct = "20"
  var priceProduct = "20"
  var nameProduct = "20"
  var colorProduct = "20"
  var sizeProduct = "20"
}
