//
//  DarkModeBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 10.02.2026.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
                         
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("This color is red")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive !")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive !")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                    
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
    
}


struct DarkModeBootcamp_Previews: PreviewProvider{
    static var previews: some View{
        Group{
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
            DarkModeBootcamp()
                .preferredColorScheme(.light)
        }
    }
}
