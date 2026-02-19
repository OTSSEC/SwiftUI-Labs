//
//  PopoverBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 3.02.2026.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("BUTTON"){
                    withAnimation(.spring()) {
                            showNewScreen.toggle()
                        }
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD-1 SHEET
        /*    .sheet(isPresented: $showNewScreen, content: {
                NewScreen()
            }) */
            //METHOD-2 Transition
       /*     ZStack{
                if showNewScreen {
                    NewScreen( showNewScreen: $showNewScreen)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring(), value: showNewScreen)
                }
            }
            .zIndex(2.0) */
            
            //METHOD 3 - Animation Offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)

            
        }
    }
}

struct NewScreen: View{
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
               // dismiss()
                showNewScreen.toggle()
            },label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
    }
}

#Preview {
    PopoverBootcamp()
   // NewScreen()
}
