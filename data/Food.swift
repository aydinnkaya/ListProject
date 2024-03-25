//
//  Food.swift
//  ListProject
//
//  Created by Aydın KAYA on 25.03.2024.
//

import Foundation

struct Food{
    var name : String
    var icon : String
    var isFavorite : Bool
    
    static func preview() -> [Food]{
        [
            Food(name:"Apple", icon: "🍎", isFavorite: true),
            Food(name: "Banana", icon: "🍌", isFavorite: false),
            Food(name: "Cherry", icon: "🍒", isFavorite: false),
            Food(name: "Mango", icon: "🥭", isFavorite: true),
            Food(name: "kiwi", icon: "🥝", isFavorite: true),
            Food(name: "Strawberry", icon: "🍓", isFavorite: true),
            Food(name: "Graps", icon: "🍇", isFavorite: true),
        ]
        
    }
    
    
}
