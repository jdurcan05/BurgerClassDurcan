//
//  CheeseController.swift
//  BurgerClassDurcan
//
//  Created by JAMES DURCAN on 10/12/22.
//

import UIKit

class CheeseController: UIViewController {
    var burgerCart: [Burger] = [Burger]()
    var burgerType: String! = nil
    var cheeseType = Burger.cheeseType.noCheese
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func americanTap(_ sender: UITapGestureRecognizer) {
        cheeseType = Burger.cheeseType.american
        performSegue(withIdentifier: "toppingSegue", sender: self)
    }
    @IBAction func cheddarTap(_ sender: UITapGestureRecognizer) {
        cheeseType = Burger.cheeseType.cheddar
        performSegue(withIdentifier: "toppingSegue", sender: self)
    }
    @IBAction func swissType(_ sender: UITapGestureRecognizer) {
        cheeseType = Burger.cheeseType.swiss
        performSegue(withIdentifier: "toppingSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! LastScreenController
        nvc.burgerCart = burgerCart
        nvc.burgerType = burgerType
        nvc.cheeseType = cheeseType
    }
    
}
