//
//  Burger.swift
//  BurgerClassDurcan
//
//  Created by JAMES DURCAN on 10/11/22.
//

import Foundation



public class Burger {
    var cheese: cheeseType
    var type: String
    var cooking: cookingLevel
    var toppings = [""]
    
    init(inCheese: cheeseType, inCooking: cookingLevel, inToppings: [String], inType: String){
        cheese = inCheese
        cooking = inCooking
        toppings = inToppings
        type = inType
    }
    enum cheeseType{
        case american, cheddar, swiss, noCheese
    }
    enum cookingLevel {
    case wellDone, medium, mediumRare, rare
    }
    
    
    
    func toString()->String{
        var str = "A \(cookingLevel.self) \(type) with \(cheeseType.self) cheese and "
        for i in 0..<toppings.count {
            if (i == toppings.count-1){
                str = "\(str) \(toppings[i])"
            }
            else{
                str = "\(str) \(toppings[i]),"
            }
        }
        return str
    }
}
