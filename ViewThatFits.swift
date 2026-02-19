//
//  ViewThatFitsBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 17.02.2026.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            ViewThatFits() {
                Text("This is text my man this is true. i am rich. i am millionare !")
                Text("I am rich. i am millionare !")
                Text("I am millionare !")
                
            }
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
