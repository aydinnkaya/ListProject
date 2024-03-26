//
//  FoodListView.swift
//  ListProject
//
//  Created by Aydın KAYA on 25.03.2024.
//

import SwiftUI

struct FoodListView: View {
    @State private var foods = Food.preview()
    
    var body: some View {
        
        NavigationStack{
            List(foods) { food in
                HStack{
                    Text(food.icon)
                    Text(food.name)
                }
                
            }
            .toolbar{
                Button(action: {
                    let newFood = Food(name: "New", icon: "\(foods.count)", isFavorite: false)
                    withAnimation {
                        foods.append(newFood)
                        
                    }
                    
                    
                }, label: {
                    Label("Add", systemImage: "plus")
                })
            }
        }
    }
}

#Preview {
    FoodListView()
}
