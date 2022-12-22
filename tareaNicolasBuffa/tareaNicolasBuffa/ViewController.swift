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
    title = "Favoritos"
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
    let product3 = Product(
      discountProduct: "30%",
      oldPriceProduct: "$100.000",
      priceProduct: "$70.000",
      nameProduct: "Remera Amarilla",
      colorProduct: "Diseño 3",
      sizeProduct: "XXL",
      image: "https://www.paris.cl/asdf"
    )
    let product4 = Product(
      discountProduct: "30%",
      oldPriceProduct: "$10.000",
      priceProduct: "$7.000",
      nameProduct: "Campera de cuero",
      colorProduct: "Diseño Unico",
      sizeProduct: "42",
      image: "https://www.paris.cl/asdf"
    )
    let product5 = Product(
      discountProduct: "20%",
      oldPriceProduct: "$50.000",
      priceProduct: "$40.000",
      nameProduct: "Pantalon Deporitvo",
      colorProduct: "Diseño 4",
      sizeProduct: "40",
      image: "https://www.paris.cl/asdf"
    )
    
    let product6 = Product(
      discountProduct: "10%",
      oldPriceProduct: "$70.000",
      priceProduct: "$63.000",
      nameProduct: "Short Floreado",
      colorProduct: "Diseño 1",
      sizeProduct: "40",
      image: "https://www.paris.cl/asdf"
    )
    let product7 = Product(
      discountProduct: "10%",
      oldPriceProduct: "$50.000",
      priceProduct: "$45.000",
      nameProduct: "Camperon Deportivo",
      colorProduct: "Diseño 1",
      sizeProduct: "40",
      image: "https://www.paris.cl/asdf"
    )
    let product8 = Product(
      discountProduct: "10%",
      oldPriceProduct: "$120.000",
      priceProduct: "$108.000",
      nameProduct: "Championes Nike",
      colorProduct: "Diseño 1",
      sizeProduct: "40",
      image: "https://www.paris.cl/asdf"
    )
    let product9 = Product(
      discountProduct: "50%",
      oldPriceProduct: "$200.000",
      priceProduct: "$100.000",
      nameProduct: "Championes Adidas",
      colorProduct: "Diseño 1",
      sizeProduct: "40",
      image: "https://www.paris.cl/asdf"
    )
    let product10 = Product(
      discountProduct: "",
      oldPriceProduct: "",
      priceProduct: "$140.000",
      nameProduct: "Championes DC",
      colorProduct: "Diseño 1",
      sizeProduct: "40",
      image: "https://www.paris.cl/asdf"
    )
    
    
    
    
    return [product1, product2,product3, product4, product5,product6,product7,product8,product9,product10]
  }
}


