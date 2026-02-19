//
//  PaddingAndSpacerBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 27.01.2026.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom )
            
            Text("Bu bir açıklamadır. Bu açıklamayı yazarken, uzunluğu 100 karakterden daha az olmalıdır. Rakam İçermelidir.")
               
        }
       
        .padding()
        .padding(.vertical,30)
        .background(
            Color.white
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y:10)
                
        )
        .padding(.horizontal, 10)
     
            
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
