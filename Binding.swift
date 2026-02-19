//
//  BindingBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 2.02.2026.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    @State var foregroundColor: Color = Color.white
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title, foregroundColor: $foregroundColor)
            }
        }
    }
}

struct ButtonView : View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    @Binding var foregroundColor: Color
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "New Titlee !!! "
            foregroundColor = Color.black
                
        }, label: {
            Text("Button")
                .foregroundColor(foregroundColor)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
            
        })
    }
}

#Preview {
    BindingBootcamp()
}
