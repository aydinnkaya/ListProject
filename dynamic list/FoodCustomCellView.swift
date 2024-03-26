//
//  FoodCustomCellView.swift
//  ListProject
//
//  Created by Aydın KAYA on 25.03.2024.
//

import SwiftUI

struct FoodCustomCellView: View {
    @State private var foods = Food.preview()
    @State private var unHealtyfoods = [
        Food(name: "Pizza", icon: "🍕", isFavorite: false),
        Food(name: "Burger", icon: "🍔", isFavorite: false)
    ]
    
    var body: some View {
        List{
            ForEach(foods) { food in
                 FoodRow(food: food)
            }
            
            ForEach(unHealtyfoods) { food in
                FoodRow(food: food)
            }
            
            Button(action: {
                let newFood =
                Food(name: "New", icon: "\(foods.count)", isFavorite: false)
                withAnimation {
                    foods.append(newFood)
                    
                }
                
            }, label: {
                Label("Add", systemImage: "plus")
            })
        }
    }
}

#Preview {
    FoodCustomCellView()
}

