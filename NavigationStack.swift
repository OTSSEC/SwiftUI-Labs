//
//  NavigationStackBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 16.02.2026.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Banana", "Orange", "Mango"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        
  //     NavigationStack(path: $stackPath){ yazılırsa ekrandaki Click me 1,2,3... butonları çalışmaz çünkü stackPath String
 //     NavigationStack{   yazılırsa tüm butonlar çalışır.
        
        NavigationStack(path: $stackPath) {
            ScrollView{
                VStack(spacing: 30){
                    
                    Button("Super segue !"){
                        stackPath.append(contentsOf: [
                            "Coconut", "Watermelon", "Mango"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me \(x)")
                        }
                    }
                }
            }
            .navigationTitle("i am rich")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SCREEN : \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int){
        self.value = value
        print("INIT SCREEN : \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
