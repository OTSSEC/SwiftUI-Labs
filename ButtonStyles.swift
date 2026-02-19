//
//  ButtonStylesBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 13.02.2026.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack{
            
            Button{
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
        //    .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
         //   .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
          //  .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
}
