//
//  StacksBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 27.01.2026.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex (back to front)
    var body: some View {
        
      /*  VStack{
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
            
        } */
    
     /*   HStack(alignment: .center, spacing: 10, content: {  // VStack için de kullanılabilir
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)  })  */
     /*   ZStack(alignment: .topLeading, content: {  // VStack için de kullanılabilir
               Rectangle()
                   .fill(Color.red)
                   .frame(width: 200, height: 200)
               Rectangle()
                   .fill(Color.green)
                   .frame(width: 150, height: 150)
               Rectangle()
                   .fill(Color.orange)
                   .frame(width: 100, height: 100)  }) */
        
     /*   ZStack(alignment: .center){
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            VStack(alignment: .leading){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75
                        )
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                }
                .background(Color.white)
            }
            .background(Color.black)
        } */
     /*   HStack(alignment: .center){
            Text("Items in your cart:")
                .font(.caption)
                .foregroundColor(.gray)
            Text("5")
                .font(.largeTitle)
        }  */
        
      /*  VStack(alignment: .center, spacing: 20){
            Text("Items in your cart:")
                .font(.caption)
                .foregroundColor(.gray)
            Text("5")
                .font(.largeTitle)
                .underline()
        } */
        
        VStack(spacing: 50){
            ZStack{
                Circle()
                    .frame(width:100, height: 100)
                    
                    .background(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 120, height: 120 )
                                )
                
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        
    }
}

#Preview {
    StacksBootcamp()
}
