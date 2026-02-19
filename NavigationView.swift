//
//  NavigationViewBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 3.02.2026.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Hello, World !",
                               destination: MyOtherScreen())
                
                Text("Hello, World !")
                Text("Hello, World !")
                Text("Hello, World !")
            }
            .navigationTitle("All Inboxes")
            //  .navigationBarTitleDisplayMode(.inline)
            //  .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName : "flame.fill")
                    },
                trailing: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                    })
                .accentColor(.red)
            )
        }
    }
}
    
struct MyOtherScreen : View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen !")
            //   .navigationBarHidden(true)
            VStack{
                Button("Back Button"){
                    dismiss()
                }
                
                NavigationLink("Click Here", destination: Text("3rd Screen!"))
            }
        }
    }
}
        
        
        #Preview {
            NavigationViewBootcamp()
        }
    

