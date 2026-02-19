//
//  ImageBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 27.01.2026.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("dog")
              .resizable()
          //  .aspectRatio(contentMode: .fit)
          //  .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .foregroundColor(.red)
          //  .clipped()
          //  .cornerRadius(50)
           // .clipShape(
               // Circle()
               // RoundedRectangle(cornerRadius: 50)
               // Ellipse()
               //     )
            
    }
}

#Preview {
    ImageBootcamp()
}
