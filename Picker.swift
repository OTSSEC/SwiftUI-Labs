//
//  PickerBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 6.02.2026.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices, id: \.self) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            
        })
        .pickerStyle(SegmentedPickerStyle())
       // .background(Color.red)
        
  /*      Picker(
            selection: $selection,
            label:
                HStack {
                    Text("Filter:")
                    Text(selection)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(20)
            ,
            content: {
                ForEach(filterOptions, id: \.self) { option in
                    HStack {
                        Text(option)
                        Image(systemName: "heart.fill")
                    }
                    .tag(option)
                }
                
            }
        
        )
        .pickerStyle(MenuPickerStyle())  */
        
        
  /*      VStack {
            HStack{
                Text("Age:")
                Text(selection)
            }
            
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(18..<100) { number in
                       Text("\(number)")
                            .font(.headline)
                            .foregroundColor(.red)
                            .tag("\(number)")
                    }
                })
            .pickerStyle(WheelPickerStyle())
         //   .background(Color.gray.opacity(0.3))
        } */
    }
}

#Preview {
    PickerBootcamp()
}
