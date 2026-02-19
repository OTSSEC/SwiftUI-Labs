//
//  ResizableSheetBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 16.02.2026.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click Me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.10), .height(500),  .medium, .large])
//                .presentationDetents([.height(500)])
//                .presentationDetents([.fraction(0.5), .medium, .large], selection: $detents)
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20){
                Button("20%") {
                    detents = .fraction(0.2)
                }
                Button("MEDIUM") {
                    detents = .medium
                }
                Button("600 PX") {
                    detents = .height(600)
                }
                
                Button("LARGE"){
                    detents = .large
                }
            }
        }
        .presentationDetents([.fraction(0.2), .medium, .height(600), .large], selection: $detents)
        .presentationDragIndicator(.hidden)
    }
}

#Preview {
    ResizableSheetBootcamp()
}
