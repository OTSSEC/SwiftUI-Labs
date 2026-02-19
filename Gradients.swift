//
//  GradientsBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 27.01.2026.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
     /*           LinearGradient(
                    gradient: Gradient(colors:[Color.red, Color.blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing) */
                
     /*           RadialGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .top,
                    startRadius: 20,
                    endRadius: 250) */
                
                AngularGradient(
                    gradient: Gradient(colors: [Color.red,Color.blue]),
                    center: .center,
                    angle: .degrees(180 + 45))
                
            )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    GradientsBootcamp()
}
