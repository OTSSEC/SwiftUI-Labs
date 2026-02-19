//
//  TextEditorBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 6.02.2026.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "Selam"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText )
                    .frame(height: 250)
                Button(action:{
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                Spacer()
            }
            
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Bootcamp !")
            
           
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
