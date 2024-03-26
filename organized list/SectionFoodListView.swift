//
//  SectionFoodListView.swift
//  ListProject
//
//  Created by Aydın KAYA on 26.03.2024.
//

import SwiftUI

struct SectionFoodListView: View {
    @State private var foods = Food.preview()
    @State private var unHealtyfoods = [
        Food(name: "Pizza", icon: "🍕", isFavorite: false),
        Food(name: "Burger", icon: "🍔", isFavorite: false)
    ]
    
    var body: some View {
        List{
            
            Section("Healty Foods"){
                ForEach(foods) { food in
                    FoodRow(food: food)
                }
            }.headerProminence(.increased)
            
            Section() {
                DisclosureGroup("Unealty Foods") {
                    ForEach(unHealtyfoods) { food in
                        FoodRow(food: food)
                    }
                }
            }.headerProminence(.increased)
            
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
    SectionFoodListView()
}
