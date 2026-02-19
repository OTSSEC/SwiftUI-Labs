//
//  DocumentationBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 10.02.2026.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples","Oranges","Bananas"
    ]
    @State var showAlert: Bool = false
    // MARK: BODY
    
   // Working Copy - things to do:
    /*
     1) Fix title
     2) Fix alert
     3) Fix sometging else
     */
    
    var body: some View {
        NavigationView{
            ZStack {
                
                //background
                Color.red.ignoresSafeArea()
                
                //foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("ALERT",action : {
                    showAlert.toggle()
                })
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert!")
                })
            }
        }
    }
    
    ///  This is the foregound layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView{
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
                
            }
            
        }
    }
    
    //MARK: FUNCTIONS
    /// Gets an alert with a specified title.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}
//MARK: PRIVIEV
#Preview {
    DocumentationBootcamp()
}
