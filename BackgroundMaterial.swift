//
//  BackgroundMaterialBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 13.02.2026.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
               RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
            
        }
        .ignoresSafeArea()
        .background(
            Image("images")
        
        )
    }
}

#Preview {
    BackgroundMaterialBootcamp()
}
