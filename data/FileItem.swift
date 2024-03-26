//
//  FileItem.swift
//  ListProject
//
//  Created by Aydın KAYA on 26.03.2024.
//

import Foundation


struct FileItem : Hashable ,Identifiable{
    var title : String
    var isFolder : Bool
    var children : [FileItem]? = nil
    let id = UUID()
    
    static func preview() -> [FileItem] {
        [FileItem(title: "Inbox", isFolder: true,
                  children: [
                    FileItem(title: "My first email", isFolder: false),
                    FileItem(title: "My second email", isFolder: false) ]),
         
         FileItem(title: "Archived", isFolder: true,
                  children: [
                    FileItem(title: "work", isFolder: true,
                             children: [FileItem(title: "Next Task", isFolder: false)]),
                    FileItem(title: "personal", isFolder: true,
                             children: [FileItem(title: "Your Subscription expired", isFolder: false)])]),
         
         FileItem(title: "Trash", isFolder: true)]
    }
}
