//
//  NewPopoverBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 16.02.2026.
//

import SwiftUI

struct NewPopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedBackOptions: [String] = [
        "Very Good", "Average", "Very Bad"
    ]
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            
            VStack{
                Spacer()
                Button("CLICK ME"){
                    showPopover.toggle()
                }
                .padding()
                .background(Color.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.bottom), content: {
                    ScrollView{
                        VStack(alignment: .leading,spacing: 12, content: {
                            ForEach(feedBackOptions,  id: \.self) { option in
                                Button(option){
                                    
                                }
                                if option != feedBackOptions.last {
                                    Divider() // VStack maddeleri arasına çizgi
                                }
                            }
                        })
                            .padding(20)
                    }
                    .presentationCompactAdaptation(.popover)
                })
                
                
            }
        }
    }
}

#Preview {
    NewPopoverBootcamp()
}
