import UIKit

class ViewControllerPDP: UIViewController{
  
  var product: Product?
  @IBOutlet weak var descritpionProduct: UITextView!
  @IBOutlet weak var nameProduct: UILabel!
  @IBOutlet weak var colorProduct: UILabel!
  @IBOutlet weak var propertyColor: UILabel!
  @IBOutlet weak var propertySize: UILabel!
  @IBOutlet weak var sizeProduct: UILabel!
  @IBOutlet weak var stackViewPrice: UIStackView!
  @IBOutlet weak var propertyPrice: UILabel!
  @IBOutlet weak var priceProduct: UILabel!
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
    colorProduct.textColor = UIColor(red: 0.78, green: 0.77, blue: 0.76, alpha: 1.00)
    sizeProduct.textColor = UIColor(red: 0.78, green: 0.77, blue: 0.76, alpha: 1.00)
    nameProduct.textColor = UIColor(red: 0.24, green: 0.24, blue: 0.24, alpha: 1.00)
    propertyColor.textColor = UIColor(red: 0.24, green: 0.24, blue: 0.24, alpha: 1.00)
  }
  func configData(){
    guard let product = product else { return }
    title = product.nameProduct
    descritpionProduct.text = product.description
    nameProduct.text = product.nameProduct
    colorProduct.text = product.colorProduct
    sizeProduct.text = product.sizeProduct
    priceProduct.text = product.priceProduct
  }
  func defaultText(){
    propertyColor.text = "Color:"
    propertySize.text = "Talle:"
    propertyPrice.text = "Precio:"
  }
  func configFontSize (){
    nameProduct.font = UIFont.boldSystemFont(ofSize: 26)
    descritpionProduct.font = UIFont.boldSystemFont(ofSize: 18)
    propertyColor.font = UIFont.boldSystemFont(ofSize: 15)
    propertySize.font = UIFont.boldSystemFont(ofSize: 15)
    colorProduct.font = UIFont.boldSystemFont(ofSize: 16)
    sizeProduct.font = UIFont.boldSystemFont(ofSize: 16)
    propertyPrice.font = UIFont.boldSystemFont(ofSize: 20)
    priceProduct.font = UIFont.boldSystemFont(ofSize: 20)
    
  }
}




