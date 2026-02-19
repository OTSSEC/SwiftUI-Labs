//
//  SafeAreaBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 28.01.2026.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
  
      
            ScrollView{
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.white)
                    
                    ForEach(0..<10){ index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                        
                        
                    }
                }
            }
            .background(Color.red)
    
        
        
        
        
        /*      ZStack {
            
            // background
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            
            //foreground
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
             .background(Color.red)
            
        } */
        
    }
}

#Preview {
    SafeAreaBootcamp()
}
