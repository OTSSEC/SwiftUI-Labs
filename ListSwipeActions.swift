//
//  ListSwipeActionsBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 13.02.2026.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple", "Banana", "Orange", "Mango", "Pineapple"
    ]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: true) {
                        Button("Archive"){
                            
                        }
                        .tint(.green)
                        Button("Save"){
                            
                        }
                        .tint(.blue)
                        Button("Junk"){
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading,
                                  allowsFullSwipe: false) {
                        Button("Share"){
                            
                        }
                        .tint(.yellow)
                    }
            
            }
        //    .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet){
        
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
