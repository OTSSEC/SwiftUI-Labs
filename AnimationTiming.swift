//
//  AnimationTimingBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 2.02.2026.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
                
            }
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0),
                    value: isAnimating
                )
            
     /*           .animation(.spring(), value: isAnimating)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeOut, value: isAnimating) */
            
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
