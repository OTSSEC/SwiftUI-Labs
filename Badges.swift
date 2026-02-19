//
//  BadgesBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 13.02.2026.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        List{
            Text("Hello World !")
                .badge("NEW ITEMS")
            Text("Hello World !")
                .badge(5)
            Text("Hello World !")
            Text("Hello World !")
        }
     
  /*      TabView {
            Color.red
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("New")
            
            Color.green
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
            
            Color.blue
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
        }  */
            
    }
}

#Preview {
    BadgesBootcamp()
}
