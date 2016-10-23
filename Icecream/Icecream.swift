//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]

    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names : [String] = []
        
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                names.append(key)
            }
        }
        return names
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var count : Int = 0
        for (_, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                count += 1
            }
        }
        
        return count
    }
    
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
        return false
        }
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
    
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else  {
            return false
        }
        
        
    }
    
    
    
    
    
    
    
    // 9.
    
    
    func attendeeList() -> String  {
        var list : String = ""
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        
        for name in allNames {
            
            let notLast = name != allNames.last!
            let value = favoriteFlavorsOfIceCream[name]!
            
            if notLast {
                list += "\(name) likes \(value)\n"
            } else {
                
                list += "\(name) likes \(value)"
                
            }
        }
        
        return list
    }
    
    

}
