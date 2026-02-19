//
//  IfLetGuardBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 10.02.2026.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "jenea"  // ya da nill yaz sonucu gör
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding !")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading{
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData()
            }
        }
    }
    
    func loadData(){
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data ! User ID : \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadData2(){
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID!"
                return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data ! User ID : \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
