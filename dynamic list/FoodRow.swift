//
//  FoodRRow.swift
//  ListProject
//
//  Created by Aydın KAYA on 26.03.2024.
//

import SwiftUI

struct FoodRow: View {
    
    let food : Food
    var body: some View {
        HStack{
            Text(food.icon)
            Text(food.name)
            
            Image(systemName: food.isFavorite ? "heart.fill" : "heart")
        }
        
        
    }
}

#Preview {
    FoodRow(food:Food(name: "Pizza", icon: "🍕", isFavorite: false))
        .padding()
}
