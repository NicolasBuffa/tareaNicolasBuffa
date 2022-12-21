//
//  ViewController.swift
//  tareaNicolasBuffa
//
//  Created by Nicolás Martín Buffa on 19/12/22.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!

  var products: [Product] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "MyCustomTableViewCell")
    tableView.dataSource = self

    products = makeProducts()
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
  var discountProduct = "20%"
  var oldPriceProduct = "$60.000"
  var priceProduct = "$45.000"
  var nameProduct = "Remera Lisa"
  var colorProduct = "Diseño 1"
  var sizeProduct = "38.5"
  var image = ""
}

extension ViewController {
  func makeProducts() -> [Product] {
    let product1 = Product(
      discountProduct: "20%",
      oldPriceProduct: "$60.000",
      priceProduct: "$45.000",
      nameProduct: "Remera Lisa",
      colorProduct: "Diseño 1",
      sizeProduct: "38.5",
      image: ""
    )

    let product2 = Product(
      discountProduct: "30%",
      oldPriceProduct: "$70.000",
      priceProduct: "$50.000",
      nameProduct: "Remera Negra",
      colorProduct: "Diseño 2",
      sizeProduct: "40",
      image: "https://www.paris.cl/asdf"
    )

    return [product1, product2]
  }
}


