//
//  ListStylingView.swift
//  ListProject
//
//  Created by Aydın KAYA on 26.03.2024.
//

import SwiftUI

struct ListStylingView: View {
    @State private var foods = Food.preview()
    @State private var unHealtyfoods = [
        Food(name: "Pizza", icon: "🍕", isFavorite: false),
        Food(name: "Burger", icon: "🍔", isFavorite: false)
    ]
    
    var body: some View {
        List{
            Section(content: {
                ForEach(foods) { food in
                    FoodRow(food: food)
                }
            }, header: {
                Text("Healthy Foods")
            }, footer: {
                Text("Try to eat them regularly.")
                    .font(.subheadline)
            }).headerProminence(.increased)
            
            
            Section(content: {
                ForEach(unHealtyfoods) { food in
                    FoodRow(food: food)
                }
            }, header: {
                Text("Unhealthy Foods")
            }, footer: {
                Text("You should try to avoid them and only eat them occacionally.")
                    .font(.subheadline)
                    
            }).headerProminence(.increased)
            
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

    ListStylingView()
        .listStyle(.grouped)
        .previewDisplayName("grouped")
    
}

