//
//  ForEachBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 28.01.2026.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi","Hello","Hey Everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack{
            ForEach(Array(data.enumerated()), id: \.offset) { index, value in
                Text("\(value) : \(index)")
            }
            ForEach(0..<2){ Index in
                Circle()
                    .frame(height: 50)
                
            }
            
            }
        }
        
    }


#Preview {
    ForEachBootcamp()
}
