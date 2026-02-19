//
//  GroupBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 16.02.2026.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Hello World ! ")
            Group {
                Text("Hello World ! ")
                Text("Hello World ! ")
            }
                .font(.caption)
                .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
