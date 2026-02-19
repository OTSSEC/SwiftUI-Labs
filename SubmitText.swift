//
//  SubmitTextBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 16.02.2026.
//

import SwiftUI

struct SubmitTextBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack{
            TextField("Placeholder...", text: $text )
                .submitLabel(.next)
                .onSubmit {
                    print("selamselamselamselam")
                }
            TextField("Placeholder...", text: $text )
                .submitLabel(.next)
                .onSubmit {
                    print("selamselamselamselam")
                }
            TextField("Placeholder...", text: $text )
                .submitLabel(.next)
                .onSubmit {
                    print("selamselamselamselam")
                }
            
        }
    }
}

#Preview {
    SubmitTextBootcamp()
}
