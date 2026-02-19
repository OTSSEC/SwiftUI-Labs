//
//  ShapesBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 27.11.2025.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 50)
           // .fill(Color.green)
            //.foregroundColor(.red)
            //.stroke()
            //.stroke(Color.blue)
            //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap:  .round, dash: [30]))
            //.trim(from: 0.4, to: 1.0)
            //.stroke(Color.green, lineWidth: 50)
            .frame(width: 300, height: 200)
}
}

#Preview {
    ShapesBootcamp()
}
