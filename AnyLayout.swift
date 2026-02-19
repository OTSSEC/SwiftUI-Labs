//
//  AnyLayoutBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 17.02.2026.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12){
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = verticalSizeClass == .compact ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
   /*         if horizontalSizeClass == .compact {
                VStack{
                    Text("Alpha")
                    Text("Beta")
                    Text("Gamma")
                }
            } else {
                HStack{
                    Text("Alpha")
                    Text("Beta")
                    Text("Gamma")
                }
            } */
            
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
