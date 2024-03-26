//
//  EnvironmentListView.swift
//  ListProject
//
//  Created by Aydın KAYA on 26.03.2024.
//

import SwiftUI

struct EnvironmentListView: View {
    var body: some View {
        NavigationStack{
            ListStylingView()
                .navigationTitle("First")
        }
    }
}

#Preview {
    EnvironmentListView()
}
