//
//  ControlGroupMenuBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 19.02.2026.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup {
                Button("Uno"){
                    
                }
                Button("Dos"){
                    
                }
                Menu("How are u") {
                    Button("Good") {
                    
                    }
                    Button("Bad") {
                    
                    }
                }
            }
            Button("Two"){
                
            }
            Menu("Three") {
                Button("Hi") {
                    
                }
                Button("Hello") {
                    
                }
            
                Menu("How are u") {
                    Button("Good") {
                    
                    }
                    Button("Bad") {
                    
                    }
                }
            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
