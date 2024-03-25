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
            List(foods , id: \.name) { food in
                HStack{
                    Text(food.icon)
                    Text(food.name)
                }
                
            }
            .toolbar{
                Button(action: {
                    
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
