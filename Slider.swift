//
//  SliderBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 7.02.2026.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.2f",sliderValue) //Virgülden sonra basamak
            // "\(sliderValue)"
            )
            .foregroundColor(color)
          //  Slider(value: $sliderValue)
          //  Slider(value: $sliderValue, in: 0...100)
          //  Slider(value: $sliderValue, in: 1...5 , step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in ();
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("selam")
                }
                )
            
                .accentColor(.red)
        }
        
    }
}

#Preview {
    SliderBootcamp()
}
