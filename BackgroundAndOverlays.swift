//
//  BackgroundAndOverlaysBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 27.01.2026.
//

import SwiftUI

struct BackgroundAndOverlaysBootcamp: View {
    var body: some View {
       /* Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            .frame(width: 100, height: 100, alignment: .center)
            .background(
               // Color.red
            /*    LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing) */
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom))
            )
            .frame(width: 120, height: 120, alignment: .center)
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .top, endPoint: .bottom))
            )
            */
     /*   Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom))
            .frame(width: 100, height: 100)
            .overlay(
                Text("9")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .top, endPoint: .bottom))
            .frame(width: 120,height: 120)
                )       */
    /*    Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height:50)
                    , alignment: .center
            
            )
            .background(
        Rectangle()
            .fill(Color.red)
            .frame(width: 150, height: 150, alignment: .center)
        , alignment: .center
      )   */
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.yellow,Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 15, x:0.0, y:0.0)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width:35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                        , alignment: .topLeading
                    )
                    
            )
        
    }
}

#Preview {
    BackgroundAndOverlaysBootcamp()
}
