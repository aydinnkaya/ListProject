//
//  HierarchicalListView.swift
//  ListProject
//
//  Created by Aydın KAYA on 26.03.2024.
//

import SwiftUI

struct HierarchicalListView: View {
    
    @State private var fileItems = FileItem.preview()
    
    // have to use the same data types
    var body: some View {
        List(fileItems, children: \.children) { fileItem in
            if fileItem.isFolder{
                Label(fileItem.title, systemImage: "folder.fill")
            }else {
                Label(fileItem.title, systemImage: "envelope")
            }
             
        }
    }
}

#Preview {
    HierarchicalListView()
}
