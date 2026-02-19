//
//  SafeAreaInsetBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 16.02.2026.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack{
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Are Insets")
            .navigationBarTitleDisplayMode(.inline)
/*            .overlay(
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
                
                ,alignment: .bottom
            ) */
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
 //                   .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
 //                   .clipShape(Circle())
 //                   .padding()
            }
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
 //                   .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
 //                   .clipShape(Circle())
 //                   .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
