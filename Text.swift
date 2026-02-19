//
//  ContentView.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 26.08.2025.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
      
        Text("Selam Hacı".capitalized)
            //.font(.body)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
            //.italic()
            //.underline(true, color: Color.red)
            //.strikethrough()
            //.strikethrough(true, color: Color.green)
            //.font(.system(size: 24, weight: .semibold, design: .serif))
            //.baselineOffset(41.0)
            //.kerning(1.0)
            .multilineTextAlignment(.leading)
            .foregroundColor(.blue)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
        
                    
    }
}

struct TextBootcamp_Previews:
    PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}

