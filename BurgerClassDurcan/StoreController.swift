//
//  StoreController.swift
//  BurgerClassDurcan
//
//  Created by JAMES DURCAN on 10/12/22.
//

import UIKit

class StoreController: UIViewController {

    var burgerCart: [Burger] = [Burger]()
    
    @IBOutlet weak var cartOutlet: UITextView!
   
    override func viewDidLoad() {
        for i in 0..<burgerCart.count{
            cartOutlet.text = cartOutlet.text + burgerCart[i].toString()
        }
        super.viewDidLoad()
    }
    

}
