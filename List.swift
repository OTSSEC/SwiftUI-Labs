//
//  ListBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 3.02.2026.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple","Orange","Banana","Peach","Strawberry"
    ]
    
    @State var veggies: [String] = [
        "Tomato","potato","carrot"
    ]
    
    var body: some View {
        NavigationStack {
            List{
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ){
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                           // .frame(maxWidth: .infinity, maxHeight: .infinity)
                           // .background(Color.pink)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")
                    .foregroundColor(.blue)
                ){
                    
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
            
            //.listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View{
        Button("Add",action:{
            add()
        })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset )
    }
    
    func add(){
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
