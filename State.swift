//
//  StateBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 28.01.2026.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count : \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing:20){
                    Button("BUTTON 1"){
                        backgroundColor = .red
                        myTitle = "BUTTON 1 Was Pressed"
                        count += 1
                    }
                    Button("BUTTON 2"){
                        backgroundColor = .blue
                        myTitle = "BUTTON 2 Was Pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
