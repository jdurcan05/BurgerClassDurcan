//
//  ViewController.swift
//  BurgerClassDurcan
//
//  Created by JAMES DURCAN on 10/9/22.
//

import UIKit

class ViewController: UIViewController {

    var burgerCart: [Burger] = [Burger]()
    var burgerType = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func jamesAdd(_ sender: UITapGestureRecognizer) {
        burgerType = "James Burger"
        performSegue(withIdentifier: "cheeseSegue", sender: self)
    }
    
    @IBAction func brianAdd(_ sender: UITapGestureRecognizer) {
        burgerType = "Brian Burger"
        performSegue(withIdentifier: "cheeseSegue", sender: self)
    }
    
    @IBAction func whoperAdd(_ sender: UITapGestureRecognizer) {
        burgerType = "Whoper Burger"
        performSegue(withIdentifier: "cheeseSegue", sender: self)
    }
    
    @IBAction func cartButton(_ sender: Any) {
        performSegue(withIdentifier: "cartSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "cartSegue"){
            let nvc = segue.destination as! StoreController
            nvc.burgerCart = burgerCart
        }
        if(segue.identifier == "cheeseSegue"){
            let nvc = segue.destination as! CheeseController
            nvc.burgerCart = burgerCart
            nvc.burgerType = burgerType
        }
    }
    
    @IBAction func unwind(_ seg:UIStoryboardSegue){
     print("unwind")
        let svc = seg.source as! LastScreenController
        burgerCart = svc.burgerCart
    }
    
}

