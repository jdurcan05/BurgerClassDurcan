//
//  LastScreenController.swift
//  BurgerClassDurcan
//
//  Created by JAMES DURCAN on 10/12/22.
//

import UIKit

class LastScreenController: UIViewController {

    
    @IBOutlet weak var lettuceSwitch: UISwitch!
    @IBOutlet weak var mayoSwitch: UISwitch!
    @IBOutlet weak var ketchupSwitch: UISwitch!
    @IBOutlet weak var tomatoSwitch: UISwitch!
    @IBOutlet weak var pickleSwitch: UISwitch!
    
    var burgerCart: [Burger] = [Burger]()
    var burgerType: String! = nil
    var cheeseType = Burger.cheeseType.noCheese
    var cookingLevel = Burger.cookingLevel.rare
    var toppings = [""]
    var toppingsB = false

    @IBOutlet weak var cookController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func mayoFLip(_ sender: UISwitch) {
        if !mayoSwitch.isOn{
            let alert = UIAlertController(title: "Good Boy", message: "This was the right decision", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if mayoSwitch.isOn{
            let alert = UIAlertController(title: "Really?", message: "Is this really what you want?", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    
   @IBAction func cookChange(_ sender: UISegmentedControl) {
       let select = sender.selectedSegmentIndex
        switch select {
            case 0: cookingLevel = Burger.cookingLevel.rare
            case 1: cookingLevel = Burger.cookingLevel.mediumRare
            case 2: cookingLevel = Burger.cookingLevel.medium
            case 3: cookingLevel = Burger.cookingLevel.wellDone
        default: cookingLevel = Burger.cookingLevel.rare
        }
       print (cookingLevel)
    }
    
    @IBAction func confirmed(_ sender: UIButton) {
        
            print("Red Dissapear")
            if lettuceSwitch.isOn{
                toppings.append("Lettuce")
                toppingsB = true
            }
            if mayoSwitch.isOn{
                toppings.append("Mayonnaise")
                toppingsB = true
            }
            if ketchupSwitch.isOn{
                toppings.append("Ketchup")
                toppingsB = true
            }
            if tomatoSwitch.isOn{
                toppings.append("Tomato")
                toppingsB = true
            }
            if pickleSwitch.isOn{
                toppings.append("Pickles")
                toppingsB = true
            }
            else if !toppingsB{
                toppings.append("Nothing")
            }
            burgerCart.append(Burger(inCheese: cheeseType, inCooking: cookingLevel, inToppings: toppings, inType: burgerType))
            performSegue(withIdentifier: "unwind", sender: self)

    }
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Red Dissapear")
        performSegue(withIdentifier: "unwind", sender: self)
        
    }

}
