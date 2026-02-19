//
//  AppStorageBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 11.02.2026.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20){
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "kemal"
                currentUserName = name
            }
        }
        
    }
}

#Preview {
    AppStorageBootcamp()
}
