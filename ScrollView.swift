//
//  ScrollViewBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 28.01.2026.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
   /*   // Asağı Kaydırma
        ScrollView(.vertical, showsIndicators: true, content: {
            VStack{
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(height: 300)
                }
            }
        }) */
     
    /*  //Sağa Kaydırma
        ScrollView(.horizontal, showsIndicators: true, content: {
            HStack{
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 300,height: 300)
                }
            }
        })  */
        
        ScrollView{
            LazyVStack{
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.white)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                            
                        }
                        
                    })
                    
                    
                    
                }
            }
        }
        
        
        
    }
}

#Preview {
    ScrollViewBootcamp()
}
