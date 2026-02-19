//
//  SheetsBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 3.02.2026.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
       
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
  /*          .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            }) */
            .sheet(isPresented: $showSheet, content:{
                //if koşulu kullanma !!!
                SecondScreen()
            })
            
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    
            })
           
        }
    }
}


#Preview {
    SheetsBootcamp()
  //  SecondScreen()
}
