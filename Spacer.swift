//
//  SpacerBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 28.01.2026.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing:0){
                Image(systemName: "xmark")
                Spacer()
                
                Image(systemName: "gear")
                
            }
            .font(.title)
        //    .background(Color.yellow)
            .padding(.horizontal)
        //    .background(Color.blue)
        
            Spacer()
             
            
            Rectangle()
                .frame(height: 55)
        }
        
        
    }
}

#Preview {
    SpacerBootcamp()
}
