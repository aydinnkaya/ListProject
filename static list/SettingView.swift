//
//  SettingView.swift
//  ListProject
//
//  Created by Aydın KAYA on 25.03.2024.
//

import SwiftUI


enum AppearanceStyle{
    case dark
    case light
    case auto
}

struct SettingView: View {
    
    @State var userName	: String = ""
    @State var isPrivate : Bool = true
    @State private var profileImageSize = false
    @State private var fontSize : CGFloat = 5
    @State private var appaerance : AppearanceStyle = .auto
    
    var body: some View {
         List{
            
            Section("Profile") {
                TextField("Username", text: $userName)
                Toggle("Private Account", isOn: $isPrivate)
                
                Button(action: {
                    
                }, label: {
                    Text("Sign Out")
                })
            }
            
            Section("Appearance") {
                Slider(value: $fontSize, in: 1...10){
                    Label("Default Font Size", systemImage: "text.magnifyingglass")
                }
                
                Picker("Appearance", selection: $appaerance) {
                    Text("Dark").tag(AppearanceStyle.dark)
                    Text("Light").tag(AppearanceStyle.light)
                    Text("Auto").tag(AppearanceStyle.auto)
                }
                
            }
            
            Section("About") {
                HStack{
                    Text("Version")
                    Spacer()
                    Text("2.2.1")
                }
            }
            
        }
    }
}

#Preview {
    SettingView()
}
