//
//  ExtractedFunctionBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 29.01.2026.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        ZStack{
            //background 
            backgroundColor
            .edgesIgnoringSafeArea(.all)
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionBootcamp()
}
