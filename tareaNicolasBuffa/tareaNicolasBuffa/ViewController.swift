//
//  ViewController.swift
//  tareaNicolasBuffa
//
//  Created by Nicolás Martín Buffa on 19/12/22.
//

import UIKit

class ViewController: UIViewController {

    /*
     
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
     
     
     */
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var discountProduct: UILabel!
    @IBOutlet weak var oldPriceProduct: UILabel!
    @IBOutlet weak var priceProduct: UILabel!
    @IBOutlet weak var propertyColor: UILabel!
    @IBOutlet weak var colorProduct: UILabel!
    @IBOutlet weak var propertySize: UILabel!
    @IBOutlet weak var sizeProduct: UILabel!
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var btnAddCart: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameProduct.text = "Remera Lisa"
        nameProduct.font = UIFont.boldSystemFont(ofSize: 15)
        
        discountProduct.text = "20%"
        discountProduct.textColor = .blue
        discountProduct.font = UIFont.boldSystemFont(ofSize: 14)
        
        priceProduct.text = "$45.000"
        priceProduct.textColor = .darkGray
        
        oldPriceProduct.text = "$60.000"
        oldPriceProduct.textColor = .lightGray
        oldPriceProduct.font = UIFont.systemFont(ofSize: 16)
        
        propertyColor.text = "Color:"
        propertyColor.font = UIFont.systemFont(ofSize: 15)
        
        colorProduct.text = "Diseño 1"
        colorProduct.font = UIFont.systemFont(ofSize: 15)
        
        propertySize.text = "Talle:"
        propertySize.font = UIFont.systemFont(ofSize: 15)
        
        sizeProduct.text = "38.5"
        sizeProduct.font = UIFont.systemFont(ofSize: 15)
        
        message.text = "Últimas unidades"
        message.font = UIFont.systemFont(ofSize: 14)
        message.textAlignment = .center;
        message.backgroundColor = .yellow
        message.textColor = .orange
       
        
        btnAddCart.backgroundColor = .blue
        btnAddCart.setTitleColor(.white, for: .normal)
        btnAddCart.setTitle("Agregar a mi Carrito", for: .normal)
        
        btnAddCart.layer.cornerRadius = 18.0
        
        
//        tableView.dataSource = self
//        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }


}
//
//extension ViewController: UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? MyCustomTableViewCell
//        cell?.discountProduct.text = "20"
//        cell?.oldPriceProduct.text = "20"
//        cell?.priceProduct.text = "20"
//        cell?.nameProduct.text = "20"
//
//        cell?.colorProduct.text = "20"
//        cell?.sizeProduct.text = "20"
//        return cell!
//    }
//
//
//}

