//
//  NavigationSplitViewBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 17.02.2026.
//

import SwiftUI

// NavigationSplitView -> iPad, MacOS, VisionOS

struct NavigationSplitViewBootcamp: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruit? = nil
    @State private var selectedVegetable: Vegetables? = nil
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility){
            List( FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) { category in
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                switch selectedCategory {
                case .fruits:
                    List( Fruit.allCases, id: \.rawValue, selection: $selectedFruit) { fruit in
                        Button(fruit.rawValue.capitalized) {
                            selectedFruit = fruit
                        }
                    }
                case .vegetables:
                    List( Vegetables.allCases, id: \.rawValue, selection: $selectedVegetable) { vegetable in
                        Button(vegetable.rawValue.capitalized) {
                            selectedVegetable = vegetable
                        }
                    }
                case .meats:
                    EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a category to begin !")
            }
        } detail: {
            if let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue.capitalized)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else if let selectedVegetable  {
                Text("You selected: \(selectedVegetable.rawValue.capitalized)")
                    .font(.largeTitle)
                    .navigationTitle(selectedVegetable.rawValue.capitalized)
            }
             else {
                Text("Select a category to begin !")
            }
            
        }
        .navigationSplitViewStyle(.balanced)

    }
}

#Preview {
    NavigationSplitViewBootcamp()
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meats
}
enum Fruit: String, CaseIterable {
    case apple, banana, orange
}

enum Vegetables: String, CaseIterable {
    case carrot, beetroot, lettuce
}
