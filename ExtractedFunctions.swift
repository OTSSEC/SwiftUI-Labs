//
//  ExtractedFunctionsBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 2.02.2026.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    var body: some View {
        ZStack {
            Color(Color.blue).edgesIgnoringSafeArea(.all)
            
            contentLayer
            
        }
    }
    
    var contentLayer: some View{
        HStack{
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
    
   
}

#Preview {
    ExtractedFunctionsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text("title")
            
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
