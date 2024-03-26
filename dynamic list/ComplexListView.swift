//
//  ComplexListView.swift
//  ListProject
//
//  Created by Aydın KAYA on 25.03.2024.
//

import SwiftUI

struct ComplexListView: View {
    @State private var foods = Food.preview()
    @State private var unHealtyfoods = [
        Food(name: "Pizza", icon: "🍕", isFavorite: false),
        Food(name: "Burger", icon: "🍔", isFavorite: false)
    ]
    
    var body: some View {
        List{
            ForEach(foods) { food in
                /*@START_MENU_TOKEN@*/Text(food.name)/*@END_MENU_TOKEN@*/
            }
            
            ForEach(unHealtyfoods) { healtyfood in
                /*@START_MENU_TOKEN@*/Text(healtyfood.name)/*@END_MENU_TOKEN@*/
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
    ComplexListView()
}
