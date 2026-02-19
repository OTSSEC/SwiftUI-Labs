//
//  StepperBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 7.02.2026.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
                
            Stepper("Stepper 2"){
                incrementWidth(amount: 100)
            } onDecrement: {
                incrementWidth(amount: -100)
            }
        }
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut){
            widthIncrement += amount
        }
        
    }
    
}

#Preview {
    StepperBootcamp()
}
