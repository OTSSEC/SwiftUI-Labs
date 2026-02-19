//
//  ObservableBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 19.02.2026.
//

import SwiftUI

@Observable class ObservableViewModel {
    
    var title: String = "Some title"
    @ObservationIgnored var value: String = "Some title"
    
}

struct ObservableBootcamp: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40){
            Button(viewModel.title) {
                viewModel.title = "New title !"
            }
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Selam Selam !"
        }
    }
}


struct SomeThirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Thirdddd vieww !"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
