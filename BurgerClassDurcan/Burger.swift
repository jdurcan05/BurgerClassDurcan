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
    enum cookingLevel:String{
    case wellDone = "Well Done", medium = "Medium", mediumRare = "Medium Rare", rare = "Rare"
    }
    
    
    
    func toString()->String{
        var str = "A \(cooking.rawValue) \(type) with \(cheese) cheese and"
        for i in 0..<toppings.count {
            str = "\(str) \(toppings[i])"
            if i != toppings.count-1 && i != 0{
                str = "\(str),"
            }
        }
        str = str + "\n"
        return str
    }
}
