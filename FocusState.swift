//
//  FocusStateBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 16.02.2026.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFileds: Hashable {
        case username
        case password
    }
    
//    @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
//   @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingFileds?
    
    var body: some View {
        VStack(spacing: 30){
            TextField("Add Your Name Here...", text: $username)
    //            .focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add Your Password Here...", text: $password)
  //              .focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 🚀 "){
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP SUCCESSFUL")
                } else if usernameIsValid {
                    fieldInFocus = .password
                } else {
                    fieldInFocus = .username
                }
                
            }
            
      /*      Button("TOGGLE FOCUS STATE"){
                usernameInFocus.toggle() } */
            
        }
        .padding(40)
  /*      .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                self.usernameInFocus = true
            }
        } */
    }
}

#Preview {
    FocusStateBootcamp()
}
